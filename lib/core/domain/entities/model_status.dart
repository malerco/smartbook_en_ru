import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_status.freezed.dart';

enum ModelLoadingState {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class ModelStatus with _$ModelStatus {
  const ModelStatus._();

  const factory ModelStatus({
    @Default(ModelLoadingState.initial) ModelLoadingState state,
    @Default(0.0) double progress,
    String? errorMessage,
  }) = _ModelStatus;

  bool get isLoaded => state == ModelLoadingState.loaded;
  bool get isLoading => state == ModelLoadingState.loading;
  bool get hasError => state == ModelLoadingState.error;
}
