import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Read & Learn'**
  String get appTitle;

  /// No description provided for @appSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Explore Languages Through Books'**
  String get appSubtitle;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @russian.
  ///
  /// In en, this message translates to:
  /// **'Russian'**
  String get russian;

  /// No description provided for @enterText.
  ///
  /// In en, this message translates to:
  /// **'Enter text to translate...'**
  String get enterText;

  /// No description provided for @characters.
  ///
  /// In en, this message translates to:
  /// **'characters'**
  String get characters;

  /// No description provided for @wordBreakdown.
  ///
  /// In en, this message translates to:
  /// **'Word Breakdown'**
  String get wordBreakdown;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @loadingModels.
  ///
  /// In en, this message translates to:
  /// **'Loading AI models...'**
  String get loadingModels;

  /// No description provided for @ready.
  ///
  /// In en, this message translates to:
  /// **'Ready!'**
  String get ready;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied!'**
  String get copied;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @translate.
  ///
  /// In en, this message translates to:
  /// **'Translate'**
  String get translate;

  /// No description provided for @swapLanguages.
  ///
  /// In en, this message translates to:
  /// **'Swap languages'**
  String get swapLanguages;

  /// No description provided for @transcription.
  ///
  /// In en, this message translates to:
  /// **'Transcription'**
  String get transcription;

  /// No description provided for @offlineMode.
  ///
  /// In en, this message translates to:
  /// **'Offline mode'**
  String get offlineMode;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @initializingTranslator.
  ///
  /// In en, this message translates to:
  /// **'Initializing AI translator...'**
  String get initializingTranslator;

  /// No description provided for @downloadingModels.
  ///
  /// In en, this message translates to:
  /// **'Downloading translation models...'**
  String get downloadingModels;

  /// No description provided for @loadingNeuralNetwork.
  ///
  /// In en, this message translates to:
  /// **'Loading neural network...'**
  String get loadingNeuralNetwork;

  /// No description provided for @preparingVocabulary.
  ///
  /// In en, this message translates to:
  /// **'Preparing vocabulary...'**
  String get preparingVocabulary;

  /// No description provided for @almostReady.
  ///
  /// In en, this message translates to:
  /// **'Almost ready...'**
  String get almostReady;

  /// No description provided for @failedToLoadModel.
  ///
  /// In en, this message translates to:
  /// **'Failed to load model'**
  String get failedToLoadModel;

  /// No description provided for @tabLibrary.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get tabLibrary;

  /// No description provided for @tabDictionary.
  ///
  /// In en, this message translates to:
  /// **'Dictionary'**
  String get tabDictionary;

  /// No description provided for @tabSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get tabSettings;

  /// No description provided for @booksTitle.
  ///
  /// In en, this message translates to:
  /// **'My Books'**
  String get booksTitle;

  /// No description provided for @addBook.
  ///
  /// In en, this message translates to:
  /// **'Add Book'**
  String get addBook;

  /// No description provided for @addNewBook.
  ///
  /// In en, this message translates to:
  /// **'+ Add New Book'**
  String get addNewBook;

  /// No description provided for @noBooks.
  ///
  /// In en, this message translates to:
  /// **'No books yet'**
  String get noBooks;

  /// No description provided for @noBooksHint.
  ///
  /// In en, this message translates to:
  /// **'Tap + to add your first book'**
  String get noBooksHint;

  /// No description provided for @deleteBook.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteBook;

  /// No description provided for @openBook.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get openBook;

  /// No description provided for @dictionaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Dictionary'**
  String get dictionaryTitle;

  /// No description provided for @dictionaryEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your dictionary is empty'**
  String get dictionaryEmpty;

  /// No description provided for @dictionaryEmptyHint.
  ///
  /// In en, this message translates to:
  /// **'Words you save while reading will appear here'**
  String get dictionaryEmptyHint;

  /// No description provided for @searchWord.
  ///
  /// In en, this message translates to:
  /// **'Search word...'**
  String get searchWord;

  /// No description provided for @addWord.
  ///
  /// In en, this message translates to:
  /// **'Add Word'**
  String get addWord;

  /// No description provided for @deleteWord.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteWord;

  /// No description provided for @word.
  ///
  /// In en, this message translates to:
  /// **'Word'**
  String get word;

  /// No description provided for @translation.
  ///
  /// In en, this message translates to:
  /// **'Translation'**
  String get translation;

  /// No description provided for @examples.
  ///
  /// In en, this message translates to:
  /// **'Examples'**
  String get examples;

  /// No description provided for @wordList.
  ///
  /// In en, this message translates to:
  /// **'Word List'**
  String get wordList;

  /// No description provided for @flashcards.
  ///
  /// In en, this message translates to:
  /// **'Flashcards'**
  String get flashcards;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @appTheme.
  ///
  /// In en, this message translates to:
  /// **'App Theme'**
  String get appTheme;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @fontSize.
  ///
  /// In en, this message translates to:
  /// **'Font Size'**
  String get fontSize;

  /// No description provided for @fontSizeSmall.
  ///
  /// In en, this message translates to:
  /// **'Small'**
  String get fontSizeSmall;

  /// No description provided for @fontSizeMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get fontSizeMedium;

  /// No description provided for @fontSizeLarge.
  ///
  /// In en, this message translates to:
  /// **'Large'**
  String get fontSizeLarge;

  /// No description provided for @fontSizeExtraLarge.
  ///
  /// In en, this message translates to:
  /// **'Extra Large'**
  String get fontSizeExtraLarge;

  /// No description provided for @appLanguage.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get appLanguage;

  /// No description provided for @mainLanguage.
  ///
  /// In en, this message translates to:
  /// **'Main Language'**
  String get mainLanguage;

  /// No description provided for @translationLanguage.
  ///
  /// In en, this message translates to:
  /// **'Translation Language'**
  String get translationLanguage;

  /// No description provided for @primaryTranslationLanguage.
  ///
  /// In en, this message translates to:
  /// **'Primary Translation Language'**
  String get primaryTranslationLanguage;

  /// No description provided for @primaryLanguage.
  ///
  /// In en, this message translates to:
  /// **'Primary Language'**
  String get primaryLanguage;

  /// No description provided for @reading.
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get reading;

  /// No description provided for @lineSpacing.
  ///
  /// In en, this message translates to:
  /// **'Line Spacing'**
  String get lineSpacing;

  /// No description provided for @lineSpacingCompact.
  ///
  /// In en, this message translates to:
  /// **'Compact'**
  String get lineSpacingCompact;

  /// No description provided for @lineSpacingNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get lineSpacingNormal;

  /// No description provided for @lineSpacingWide.
  ///
  /// In en, this message translates to:
  /// **'Wide'**
  String get lineSpacingWide;

  /// No description provided for @lineSpacingRelaxed.
  ///
  /// In en, this message translates to:
  /// **'Relaxed'**
  String get lineSpacingRelaxed;

  /// No description provided for @fontFamily.
  ///
  /// In en, this message translates to:
  /// **'Font Family'**
  String get fontFamily;

  /// No description provided for @dataAndStorage.
  ///
  /// In en, this message translates to:
  /// **'Data & Storage'**
  String get dataAndStorage;

  /// No description provided for @clearDictionary.
  ///
  /// In en, this message translates to:
  /// **'Clear Dictionary'**
  String get clearDictionary;

  /// No description provided for @clearAllData.
  ///
  /// In en, this message translates to:
  /// **'Clear All Data'**
  String get clearAllData;

  /// No description provided for @confirmClearDictionary.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear all dictionary entries?'**
  String get confirmClearDictionary;

  /// No description provided for @confirmClearAllData.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete all data? This action cannot be undone.'**
  String get confirmClearAllData;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @aboutApp.
  ///
  /// In en, this message translates to:
  /// **'About App'**
  String get aboutApp;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appVersion;

  /// No description provided for @chapters.
  ///
  /// In en, this message translates to:
  /// **'Chapters'**
  String get chapters;

  /// No description provided for @importingBook.
  ///
  /// In en, this message translates to:
  /// **'Importing book...'**
  String get importingBook;

  /// No description provided for @bookImported.
  ///
  /// In en, this message translates to:
  /// **'Book imported successfully'**
  String get bookImported;

  /// No description provided for @bookImportError.
  ///
  /// In en, this message translates to:
  /// **'Failed to import book'**
  String get bookImportError;

  /// No description provided for @unsupportedFormat.
  ///
  /// In en, this message translates to:
  /// **'Unsupported book format'**
  String get unsupportedFormat;

  /// No description provided for @selectBook.
  ///
  /// In en, this message translates to:
  /// **'Select a book'**
  String get selectBook;

  /// No description provided for @supportedFormats.
  ///
  /// In en, this message translates to:
  /// **'Supported formats: EPUB, FB2, TXT'**
  String get supportedFormats;

  /// No description provided for @translating.
  ///
  /// In en, this message translates to:
  /// **'Translating...'**
  String get translating;

  /// No description provided for @translationError.
  ///
  /// In en, this message translates to:
  /// **'Translation error'**
  String get translationError;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get noInternetConnection;

  /// No description provided for @noInternetHint.
  ///
  /// In en, this message translates to:
  /// **'Paragraph translation requires internet. Only offline word translation is available.'**
  String get noInternetHint;

  /// No description provided for @translationTimeout.
  ///
  /// In en, this message translates to:
  /// **'Translation timed out. Please try again.'**
  String get translationTimeout;

  /// No description provided for @saveToVocabulary.
  ///
  /// In en, this message translates to:
  /// **'Save to vocabulary'**
  String get saveToVocabulary;

  /// No description provided for @wordSaved.
  ///
  /// In en, this message translates to:
  /// **'Word saved to dictionary'**
  String get wordSaved;

  /// No description provided for @wordAlreadySaved.
  ///
  /// In en, this message translates to:
  /// **'Word already in dictionary'**
  String get wordAlreadySaved;

  /// No description provided for @loadingTranslation.
  ///
  /// In en, this message translates to:
  /// **'Loading translation...'**
  String get loadingTranslation;

  /// No description provided for @loadingTranslationHint.
  ///
  /// In en, this message translates to:
  /// **'Preparing chapter translation for offline reading'**
  String get loadingTranslationHint;

  /// No description provided for @translationLoadedOffline.
  ///
  /// In en, this message translates to:
  /// **'Translation available offline'**
  String get translationLoadedOffline;

  /// No description provided for @translationFailed.
  ///
  /// In en, this message translates to:
  /// **'Translation loading failed'**
  String get translationFailed;

  /// No description provided for @translationFailedHint.
  ///
  /// In en, this message translates to:
  /// **'Only offline word translation by tap is available. Swipe to translate paragraphs is disabled.'**
  String get translationFailedHint;

  /// No description provided for @retryTranslation.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryTranslation;

  /// No description provided for @skipTranslation.
  ///
  /// In en, this message translates to:
  /// **'Continue without translation'**
  String get skipTranslation;

  /// No description provided for @checkingModels.
  ///
  /// In en, this message translates to:
  /// **'Checking models...'**
  String get checkingModels;

  /// No description provided for @downloadingLanguageModels.
  ///
  /// In en, this message translates to:
  /// **'Downloading language models...'**
  String get downloadingLanguageModels;

  /// No description provided for @downloadingRussianModel.
  ///
  /// In en, this message translates to:
  /// **'Downloading Russian model...'**
  String get downloadingRussianModel;

  /// No description provided for @initializingTranslators.
  ///
  /// In en, this message translates to:
  /// **'Initializing translators...'**
  String get initializingTranslators;

  /// No description provided for @modelsReady.
  ///
  /// In en, this message translates to:
  /// **'Ready!'**
  String get modelsReady;

  /// No description provided for @loadingModel.
  ///
  /// In en, this message translates to:
  /// **'Loading model...'**
  String get loadingModel;

  /// No description provided for @onboardingWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Read & Learn'**
  String get onboardingWelcomeTitle;

  /// No description provided for @onboardingWelcomeDesc.
  ///
  /// In en, this message translates to:
  /// **'Read books in a foreign language and learn new words effortlessly. Upload books in your preferred format.'**
  String get onboardingWelcomeDesc;

  /// No description provided for @onboardingTranslationTitle.
  ///
  /// In en, this message translates to:
  /// **'Translate Paragraphs'**
  String get onboardingTranslationTitle;

  /// No description provided for @onboardingTranslationDesc.
  ///
  /// In en, this message translates to:
  /// **'Swipe left on any paragraph to see its translation. The translation loads when you open a chapter.'**
  String get onboardingTranslationDesc;

  /// No description provided for @onboardingWordTitle.
  ///
  /// In en, this message translates to:
  /// **'Tap Any Word'**
  String get onboardingWordTitle;

  /// No description provided for @onboardingWordDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap on any word to see its translation, transcription, and multiple meaning variants.'**
  String get onboardingWordDesc;

  /// No description provided for @onboardingSaveTitle.
  ///
  /// In en, this message translates to:
  /// **'Build Your Vocabulary'**
  String get onboardingSaveTitle;

  /// No description provided for @onboardingSaveDesc.
  ///
  /// In en, this message translates to:
  /// **'Save words you want to learn to your personal dictionary. Review them anytime in the Dictionary tab.'**
  String get onboardingSaveDesc;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @remember.
  ///
  /// In en, this message translates to:
  /// **'Remember'**
  String get remember;

  /// No description provided for @dontRemember.
  ///
  /// In en, this message translates to:
  /// **'Don\'t remember'**
  String get dontRemember;

  /// No description provided for @tapToFlip.
  ///
  /// In en, this message translates to:
  /// **'Tap to flip'**
  String get tapToFlip;

  /// No description provided for @allWordsLearned.
  ///
  /// In en, this message translates to:
  /// **'All words learned!'**
  String get allWordsLearned;

  /// No description provided for @resetProgressHint.
  ///
  /// In en, this message translates to:
  /// **'Reset progress to practice again'**
  String get resetProgressHint;

  /// No description provided for @resetProgress.
  ///
  /// In en, this message translates to:
  /// **'Reset Progress'**
  String get resetProgress;

  /// No description provided for @resetProgressConfirm.
  ///
  /// In en, this message translates to:
  /// **'Reset learning progress for all words?'**
  String get resetProgressConfirm;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
