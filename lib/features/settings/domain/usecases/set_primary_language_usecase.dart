import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/settings_repository.dart';

@lazySingleton
class SetPrimaryLanguageUseCase {
  final SettingsRepository _repository;

  SetPrimaryLanguageUseCase(this._repository);

  Future<void> call(String language) async {
    await _repository.setPrimaryLanguage(language);
  }
}
