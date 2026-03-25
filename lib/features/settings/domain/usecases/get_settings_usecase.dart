import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Settings {
  final AppThemeMode themeMode;
  final FontSizeOption fontSize;
  final LineSpacingOption lineSpacing;
  final String fontFamily;
  final String primaryLanguage;
  final String appLanguage;
  final String appVersion;

  const Settings({
    required this.themeMode,
    required this.fontSize,
    required this.lineSpacing,
    required this.fontFamily,
    required this.primaryLanguage,
    required this.appLanguage,
    required this.appVersion,
  });
}

@lazySingleton
class GetSettingsUseCase {
  final SettingsRepository _repository;

  GetSettingsUseCase(this._repository);

  Future<Settings> call() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final _buildVersion = packageInfo.version;
    return Settings(
      themeMode: _repository.getThemeMode(),
      fontSize: _repository.getFontSize(),
      lineSpacing: _repository.getLineSpacing(),
      fontFamily: _repository.getFontFamily(),
      primaryLanguage: _repository.getPrimaryLanguage(),
      appLanguage: _repository.getAppLanguage(),
      appVersion: _buildVersion,
    );
  }
}
