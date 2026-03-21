import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/settings_repository.dart';

@lazySingleton
class SetFontSizeUseCase {
  final SettingsRepository _repository;

  SetFontSizeUseCase(this._repository);

  Future<void> call(FontSizeOption size) async {
    await _repository.setFontSize(size);
  }
}
