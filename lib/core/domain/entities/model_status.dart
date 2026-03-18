import 'package:equatable/equatable.dart';

enum ModelLoadingState {
  initial,
  loading,
  loaded,
  error,
}

class ModelStatus extends Equatable {
  final ModelLoadingState state;
  final double progress;
  final String? errorMessage;

  const ModelStatus({
    this.state = ModelLoadingState.initial,
    this.progress = 0.0,
    this.errorMessage,
  });

  ModelStatus copyWith({
    ModelLoadingState? state,
    double? progress,
    String? errorMessage,
  }) {
    return ModelStatus(
      state: state ?? this.state,
      progress: progress ?? this.progress,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  bool get isLoaded => state == ModelLoadingState.loaded;
  bool get isLoading => state == ModelLoadingState.loading;
  bool get hasError => state == ModelLoadingState.error;

  @override
  List<Object?> get props => [state, progress, errorMessage];
}
