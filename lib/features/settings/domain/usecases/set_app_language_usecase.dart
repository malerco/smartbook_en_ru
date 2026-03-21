import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/settings_repository.dart';

@lazySingleton
class SetAppLanguageUseCase {
  final SettingsRepository _repository;

  SetAppLanguageUseCase(this._repository);

  Future<void> call(String language) async {
    await _repository.setAppLanguage(language);
  }
}
