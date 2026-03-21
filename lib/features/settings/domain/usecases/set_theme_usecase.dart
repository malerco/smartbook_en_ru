import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/settings_repository.dart';

@lazySingleton
class SetThemeUseCase {
  final SettingsRepository _repository;

  SetThemeUseCase(this._repository);

  Future<void> call(AppThemeMode mode) async {
    await _repository.setThemeMode(mode);
  }
}
