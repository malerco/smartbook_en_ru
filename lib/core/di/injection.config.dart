// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/books/domain/usecases/add_book_usecase.dart' as _i199;
import '../../features/books/domain/usecases/delete_book_usecase.dart' as _i919;
import '../../features/books/domain/usecases/get_books_usecase.dart' as _i297;
import '../../features/books/domain/usecases/update_book_usecase.dart' as _i562;
import '../../features/books/presentation/bloc/books_bloc.dart' as _i815;
import '../../features/dictionary/domain/usecases/add_dictionary_entry_usecase.dart'
    as _i307;
import '../../features/dictionary/domain/usecases/clear_dictionary_usecase.dart'
    as _i69;
import '../../features/dictionary/domain/usecases/delete_dictionary_entry_usecase.dart'
    as _i693;
import '../../features/dictionary/domain/usecases/get_dictionary_entries_usecase.dart'
    as _i102;
import '../../features/dictionary/domain/usecases/search_dictionary_usecase.dart'
    as _i548;
import '../../features/dictionary/presentation/bloc/dictionary_bloc.dart'
    as _i928;
import '../../features/settings/domain/usecases/get_settings_usecase.dart'
    as _i1029;
import '../../features/settings/domain/usecases/set_app_language_usecase.dart'
    as _i848;
import '../../features/settings/domain/usecases/set_font_family_usecase.dart'
    as _i161;
import '../../features/settings/domain/usecases/set_font_size_usecase.dart'
    as _i219;
import '../../features/settings/domain/usecases/set_line_spacing_usecase.dart'
    as _i126;
import '../../features/settings/domain/usecases/set_primary_language_usecase.dart'
    as _i90;
import '../../features/settings/domain/usecases/set_theme_usecase.dart'
    as _i986;
import '../../features/settings/presentation/bloc/settings_bloc.dart' as _i585;
import '../../features/splash/domain/usecases/load_model_usecase.dart'
    as _i1040;
import '../../features/splash/presentation/bloc/splash_bloc.dart' as _i442;
import '../data/repositories/books_repository_impl.dart' as _i515;
import '../data/repositories/dictionary_repository_impl.dart' as _i1010;
import '../data/repositories/settings_repository_impl.dart' as _i453;
import '../data/repositories/translation_repository_impl.dart' as _i892;
import '../domain/repositories/books_repository.dart' as _i195;
import '../domain/repositories/dictionary_repository.dart' as _i794;
import '../domain/repositories/settings_repository.dart' as _i977;
import '../domain/repositories/translation_repository.dart' as _i352;
import '../domain/usecases/translate_text_usecase.dart' as _i682;
import '../ml/translation_model.dart' as _i1004;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i1004.TranslationModel>(() => _i1004.TranslationModel());
    gh.lazySingleton<_i977.SettingsRepository>(
      () => _i453.SettingsRepositoryImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i794.DictionaryRepository>(
      () => _i1010.DictionaryRepositoryImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i195.BooksRepository>(
      () => _i515.BooksRepositoryImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i548.SearchDictionaryUseCase>(
      () => _i548.SearchDictionaryUseCase(gh<_i794.DictionaryRepository>()),
    );
    gh.lazySingleton<_i307.AddDictionaryEntryUseCase>(
      () => _i307.AddDictionaryEntryUseCase(gh<_i794.DictionaryRepository>()),
    );
    gh.lazySingleton<_i102.GetDictionaryEntriesUseCase>(
      () => _i102.GetDictionaryEntriesUseCase(gh<_i794.DictionaryRepository>()),
    );
    gh.lazySingleton<_i693.DeleteDictionaryEntryUseCase>(
      () =>
          _i693.DeleteDictionaryEntryUseCase(gh<_i794.DictionaryRepository>()),
    );
    gh.lazySingleton<_i69.ClearDictionaryUseCase>(
      () => _i69.ClearDictionaryUseCase(gh<_i794.DictionaryRepository>()),
    );
    gh.factory<_i928.DictionaryBloc>(
      () => _i928.DictionaryBloc(
        gh<_i102.GetDictionaryEntriesUseCase>(),
        gh<_i307.AddDictionaryEntryUseCase>(),
        gh<_i693.DeleteDictionaryEntryUseCase>(),
        gh<_i548.SearchDictionaryUseCase>(),
        gh<_i69.ClearDictionaryUseCase>(),
      ),
    );
    gh.lazySingleton<_i352.TranslationRepository>(
      () => _i892.TranslationRepositoryImpl(gh<_i1004.TranslationModel>()),
    );
    gh.lazySingleton<_i682.TranslateTextUseCase>(
      () => _i682.TranslateTextUseCase(gh<_i352.TranslationRepository>()),
    );
    gh.lazySingleton<_i1040.LoadModelUseCase>(
      () => _i1040.LoadModelUseCase(gh<_i352.TranslationRepository>()),
    );
    gh.lazySingleton<_i562.UpdateBookUseCase>(
      () => _i562.UpdateBookUseCase(gh<_i195.BooksRepository>()),
    );
    gh.lazySingleton<_i199.AddBookUseCase>(
      () => _i199.AddBookUseCase(gh<_i195.BooksRepository>()),
    );
    gh.lazySingleton<_i297.GetBooksUseCase>(
      () => _i297.GetBooksUseCase(gh<_i195.BooksRepository>()),
    );
    gh.lazySingleton<_i919.DeleteBookUseCase>(
      () => _i919.DeleteBookUseCase(gh<_i195.BooksRepository>()),
    );
    gh.factory<_i442.SplashBloc>(
      () => _i442.SplashBloc(
        loadModelUseCase: gh<_i1040.LoadModelUseCase>(),
        repository: gh<_i352.TranslationRepository>(),
      ),
    );
    gh.lazySingleton<_i219.SetFontSizeUseCase>(
      () => _i219.SetFontSizeUseCase(gh<_i977.SettingsRepository>()),
    );
    gh.lazySingleton<_i986.SetThemeUseCase>(
      () => _i986.SetThemeUseCase(gh<_i977.SettingsRepository>()),
    );
    gh.lazySingleton<_i1029.GetSettingsUseCase>(
      () => _i1029.GetSettingsUseCase(gh<_i977.SettingsRepository>()),
    );
    gh.lazySingleton<_i126.SetLineSpacingUseCase>(
      () => _i126.SetLineSpacingUseCase(gh<_i977.SettingsRepository>()),
    );
    gh.lazySingleton<_i90.SetPrimaryLanguageUseCase>(
      () => _i90.SetPrimaryLanguageUseCase(gh<_i977.SettingsRepository>()),
    );
    gh.lazySingleton<_i161.SetFontFamilyUseCase>(
      () => _i161.SetFontFamilyUseCase(gh<_i977.SettingsRepository>()),
    );
    gh.lazySingleton<_i848.SetAppLanguageUseCase>(
      () => _i848.SetAppLanguageUseCase(gh<_i977.SettingsRepository>()),
    );
    gh.factory<_i585.SettingsBloc>(
      () => _i585.SettingsBloc(
        gh<_i1029.GetSettingsUseCase>(),
        gh<_i986.SetThemeUseCase>(),
        gh<_i219.SetFontSizeUseCase>(),
        gh<_i126.SetLineSpacingUseCase>(),
        gh<_i161.SetFontFamilyUseCase>(),
        gh<_i90.SetPrimaryLanguageUseCase>(),
        gh<_i848.SetAppLanguageUseCase>(),
      ),
    );
    gh.factory<_i815.BooksBloc>(
      () => _i815.BooksBloc(
        gh<_i297.GetBooksUseCase>(),
        gh<_i199.AddBookUseCase>(),
        gh<_i562.UpdateBookUseCase>(),
        gh<_i919.DeleteBookUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
