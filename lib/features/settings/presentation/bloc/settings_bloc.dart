import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/settings_service.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsService _settingsService;

  SettingsBloc(this._settingsService) : super(const SettingsState.initial()) {
    on<SettingsLoadRequested>(_onLoadRequested);
    on<SettingsThemeChanged>(_onThemeChanged);
    on<SettingsFontSizeChanged>(_onFontSizeChanged);
    on<SettingsLineSpacingChanged>(_onLineSpacingChanged);
    on<SettingsFontFamilyChanged>(_onFontFamilyChanged);
    on<SettingsPrimaryLanguageChanged>(_onPrimaryLanguageChanged);
  }

  void _onLoadRequested(
    SettingsLoadRequested event,
    Emitter<SettingsState> emit,
  ) {
    emit(SettingsState.loaded(
      themeMode: _settingsService.themeMode,
      fontSize: _settingsService.fontSize,
      lineSpacing: _settingsService.lineSpacing,
      fontFamily: _settingsService.fontFamily,
      primaryLanguage: _settingsService.primaryLanguage,
    ));
  }

  Future<void> _onThemeChanged(
    SettingsThemeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsService.setThemeMode(event.themeMode);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onFontSizeChanged(
    SettingsFontSizeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsService.setFontSize(event.fontSize);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onLineSpacingChanged(
    SettingsLineSpacingChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsService.setLineSpacing(event.lineSpacing);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onFontFamilyChanged(
    SettingsFontFamilyChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsService.setFontFamily(event.fontFamily);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onPrimaryLanguageChanged(
    SettingsPrimaryLanguageChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsService.setPrimaryLanguage(event.language);
    add(const SettingsEvent.loadRequested());
  }
}
