part of 'splash_bloc.dart';

enum LoadingMessageType {
  initializing,
  downloadingModels,
  loadingNeuralNetwork,
  preparingVocabulary,
  almostReady,
  ready,
}

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = SplashInitial;
  const factory SplashState.loading({
    required double progress,
    required LoadingMessageType messageType,
  }) = SplashLoading;
  const factory SplashState.loaded() = SplashLoaded;
  const factory SplashState.error(String errorKey) = SplashError;
}
