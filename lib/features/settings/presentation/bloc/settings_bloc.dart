import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import '../../domain/usecases/get_settings_usecase.dart';
import '../../domain/usecases/set_theme_usecase.dart';
import '../../domain/usecases/set_font_size_usecase.dart';
import '../../domain/usecases/set_line_spacing_usecase.dart';
import '../../domain/usecases/set_font_family_usecase.dart';
import '../../domain/usecases/set_primary_language_usecase.dart';
import '../../domain/usecases/set_app_language_usecase.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetSettingsUseCase _getSettingsUseCase;
  final SetThemeUseCase _setThemeUseCase;
  final SetFontSizeUseCase _setFontSizeUseCase;
  final SetLineSpacingUseCase _setLineSpacingUseCase;
  final SetFontFamilyUseCase _setFontFamilyUseCase;
  final SetPrimaryLanguageUseCase _setPrimaryLanguageUseCase;
  final SetAppLanguageUseCase _setAppLanguageUseCase;

  SettingsBloc(
    this._getSettingsUseCase,
    this._setThemeUseCase,
    this._setFontSizeUseCase,
    this._setLineSpacingUseCase,
    this._setFontFamilyUseCase,
    this._setPrimaryLanguageUseCase,
    this._setAppLanguageUseCase,
  ) : super(const SettingsState.initial()) {
    on<SettingsLoadRequested>(_onLoadRequested);
    on<SettingsThemeChanged>(_onThemeChanged);
    on<SettingsFontSizeChanged>(_onFontSizeChanged);
    on<SettingsLineSpacingChanged>(_onLineSpacingChanged);
    on<SettingsFontFamilyChanged>(_onFontFamilyChanged);
    on<SettingsPrimaryLanguageChanged>(_onPrimaryLanguageChanged);
    on<SettingsAppLanguageChanged>(_onAppLanguageChanged);
  }

  Future<void> _onLoadRequested(
    SettingsLoadRequested event,
    Emitter<SettingsState> emit,
  ) async {
    final settings = await _getSettingsUseCase();
    emit(SettingsState.loaded(
      themeMode: settings.themeMode,
      fontSize: settings.fontSize,
      lineSpacing: settings.lineSpacing,
      fontFamily: settings.fontFamily,
      primaryLanguage: settings.primaryLanguage,
      appLanguage: settings.appLanguage,
      appVersion: settings.appVersion,
    ));
  }

  Future<void> _onThemeChanged(
    SettingsThemeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _setThemeUseCase(event.themeMode);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onFontSizeChanged(
    SettingsFontSizeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _setFontSizeUseCase(event.fontSize);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onLineSpacingChanged(
    SettingsLineSpacingChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _setLineSpacingUseCase(event.lineSpacing);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onFontFamilyChanged(
    SettingsFontFamilyChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _setFontFamilyUseCase(event.fontFamily);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onPrimaryLanguageChanged(
    SettingsPrimaryLanguageChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _setPrimaryLanguageUseCase(event.language);
    add(const SettingsEvent.loadRequested());
  }

  Future<void> _onAppLanguageChanged(
    SettingsAppLanguageChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _setAppLanguageUseCase(event.language);
    add(const SettingsEvent.loadRequested());
  }
}
