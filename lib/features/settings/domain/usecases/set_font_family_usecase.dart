import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/settings_repository.dart';

@lazySingleton
class SetFontFamilyUseCase {
  final SettingsRepository _repository;

  SetFontFamilyUseCase(this._repository);

  Future<void> call(String family) async {
    await _repository.setFontFamily(family);
  }
}
