import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/translation_repository.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/load_model_usecase.dart';


part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final LoadModelUseCase loadModelUseCase;
  final TranslationRepository repository;
  StreamSubscription? _statusSubscription;

  SplashBloc({
    required this.loadModelUseCase,
    required this.repository,
  }) : super(const SplashState.initial()) {
    on<SplashStarted>(_onSplashStarted);
    on<SplashProgressUpdated>(_onProgressUpdated);
  }

  Future<void> _onSplashStarted(
    SplashStarted event,
    Emitter<SplashState> emit,
  ) async {
    emit(const SplashState.loading(
      progress: 0.0,
      messageType: LoadingMessageType.initializing,
    ));

    _statusSubscription = repository.modelStatusStream.listen((status) {
      if (status.isLoading) {
        LoadingMessageType messageType;
        if (status.progress < 0.3) {
          messageType = LoadingMessageType.downloadingModels;
        } else if (status.progress < 0.6) {
          messageType = LoadingMessageType.loadingNeuralNetwork;
        } else if (status.progress < 0.9) {
          messageType = LoadingMessageType.preparingVocabulary;
        } else {
          messageType = LoadingMessageType.almostReady;
        }
        add(SplashEvent.progressUpdated(status.progress, messageType));
      }
    });

    final result = await loadModelUseCase(NoParams());

    await _statusSubscription?.cancel();

    await result.fold(
      (failure) async => emit(SplashState.error(failure.message)),
      (status) async {
        if (status.isLoaded) {
          emit(const SplashState.loading(
            progress: 1.0,
            messageType: LoadingMessageType.ready,
          ));
          await Future.delayed(const Duration(milliseconds: 500));
          if (!isClosed) {
            emit(const SplashState.loaded());
          }
        } else if (status.hasError) {
          emit(SplashState.error(status.errorMessage ?? 'failedToLoadModel'));
        }
      },
    );
  }

  void _onProgressUpdated(
    SplashProgressUpdated event,
    Emitter<SplashState> emit,
  ) {
    emit(SplashState.loading(
      progress: event.progress,
      messageType: event.messageType,
    ));
  }

  @override
  Future<void> close() {
    _statusSubscription?.cancel();
    return super.close();
  }
}


