import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/settings_repository.dart';

@lazySingleton
class SetLineSpacingUseCase {
  final SettingsRepository _repository;

  SetLineSpacingUseCase(this._repository);

  Future<void> call(LineSpacingOption spacing) async {
    await _repository.setLineSpacing(spacing);
  }
}
