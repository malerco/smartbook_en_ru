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

import '../../features/books/presentation/bloc/books_bloc.dart' as _i815;
import '../../features/dictionary/presentation/bloc/dictionary_bloc.dart'
    as _i928;
import '../../features/settings/presentation/bloc/settings_bloc.dart' as _i585;
import '../../features/splash/domain/usecases/load_model_usecase.dart'
    as _i1040;
import '../../features/splash/presentation/bloc/splash_bloc.dart' as _i442;
import '../data/repositories/translation_repository_impl.dart' as _i892;
import '../domain/repositories/translation_repository.dart' as _i352;
import '../domain/usecases/translate_text_usecase.dart' as _i682;
import '../ml/translation_model.dart' as _i1004;
import '../services/books_service.dart' as _i191;
import '../services/dictionary_service.dart' as _i540;
import '../services/settings_service.dart' as _i114;
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
    gh.lazySingleton<_i191.BooksService>(
      () => _i191.BooksService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i114.SettingsService>(
      () => _i114.SettingsService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i540.DictionaryService>(
      () => _i540.DictionaryService(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i585.SettingsBloc>(
      () => _i585.SettingsBloc(gh<_i114.SettingsService>()),
    );
    gh.factory<_i928.DictionaryBloc>(
      () => _i928.DictionaryBloc(gh<_i540.DictionaryService>()),
    );
    gh.factory<_i815.BooksBloc>(
      () => _i815.BooksBloc(gh<_i191.BooksService>()),
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
    gh.factory<_i442.SplashBloc>(
      () => _i442.SplashBloc(
        loadModelUseCase: gh<_i1040.LoadModelUseCase>(),
        repository: gh<_i352.TranslationRepository>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
