class MarianTokenizer {
  final Map<String, int> _vocab = {};
  final Map<int, String> _reverseVocab = {};
  bool _isLoaded = false;

  static const int padTokenId = 0;
  static const int eosTokenId = 0;
  static const int bosTokenId = 0;
  static const int unkTokenId = 1;

  static const Map<String, int> _defaultEnRuVocab = {
    '<pad>': 0, '<unk>': 1, '<s>': 2, '</s>': 3,
    '▁': 4, '▁the': 5, '▁a': 6, '▁to': 7, '▁of': 8, '▁and': 9,
    '▁in': 10, '▁is': 11, '▁it': 12, '▁that': 13, '▁for': 14,
    '▁you': 15, '▁I': 16, '▁on': 17, '▁with': 18, '▁be': 19,
    '▁this': 20, '▁are': 21, '▁have': 22, '▁not': 23, '▁was': 24,
    '▁as': 25, '▁but': 26, '▁they': 27, '▁at': 28, '▁we': 29,
    '▁his': 30, '▁from': 31, '▁or': 32, '▁an': 33, '▁by': 34,
    '▁he': 35, '▁will': 36, '▁my': 37, '▁all': 38, '▁would': 39,
    '▁can': 40, '▁her': 41, '▁has': 42, '▁there': 43, '▁been': 44,
    '▁if': 45, '▁more': 46, '▁when': 47, '▁what': 48, '▁so': 49,
    '▁no': 50, '▁up': 51, '▁out': 52, '▁about': 53, '▁who': 54,
    '▁one': 55, '▁do': 56, '▁their': 57, '▁time': 58, '▁very': 59,
    '▁just': 60, '▁which': 61, '▁some': 62, '▁could': 63, '▁me': 64,
    '▁him': 65, '▁into': 66, '▁its': 67, '▁then': 68, '▁only': 69,
    '▁come': 70, '▁over': 71, '▁such': 72, '▁also': 73, '▁your': 74,
    '▁other': 75, '▁new': 76, '▁any': 77, '▁these': 78, '▁may': 79,
    '▁our': 80, '▁like': 81, '▁than': 82, '▁should': 83, '▁well': 84,
    '▁people': 85, '▁how': 86, '▁after': 87, '▁now': 88, '▁them': 89,
    '▁think': 90, '▁being': 91, '▁make': 92, '▁back': 93, '▁see': 94,
    '▁way': 95, '▁good': 96, '▁know': 97, '▁because': 98, '▁get': 99,
    '▁where': 100, '▁were': 101, '▁said': 102, '▁each': 103, '▁she': 104,
    '▁did': 105, '▁down': 106, '▁before': 107, '▁made': 108, '▁find': 109,
    '▁work': 110, '▁here': 111, '▁much': 112, '▁many': 113, '▁those': 114,
    '▁through': 115, '▁long': 116, '▁even': 117, '▁day': 118, '▁most': 119,
    '▁want': 120, '▁had': 121, '▁first': 122, '▁year': 123, '▁take': 124,
    '▁say': 125, '▁go': 126, '▁still': 127, '▁own': 128, '▁too': 129,
    '▁must': 130, '▁great': 131, '▁tell': 132, '▁little': 133, '▁never': 134,
    '▁right': 135, '▁us': 136, '▁last': 137, '▁again': 138, '▁life': 139,
    '▁world': 140, '▁going': 141, '▁look': 142, '▁call': 143, '▁while': 144,
    '▁put': 145, '▁hand': 146, '▁old': 147, '▁place': 148, '▁nothing': 149,
    '▁away': 150, '▁need': 151, '▁house': 152, '▁something': 153, '▁why': 154,
    '▁came': 155, '▁man': 156, '▁night': 157, '▁give': 158, '▁off': 159,
    '▁point': 160, '▁let': 161, '▁every': 162, '▁another': 163, '▁part': 164,
    '▁might': 165, '▁does': 166, '▁use': 167, '▁end': 168, '▁head': 169,
    '▁thing': 170, '▁got': 171, '▁left': 172, '▁without': 173, '▁until': 174,
    '▁always': 175, '▁both': 176, '▁under': 177, '▁same': 178, '▁keep': 179,
    '▁felt': 180, '▁though': 181, '▁face': 182, '▁name': 183, '▁gave': 184,
    '▁thought': 185, '▁between': 186, '▁seen': 187, '▁eyes': 188, '▁done': 189,
    '▁knew': 190, '▁since': 191, '▁quite': 192, '▁room': 193, '▁asked': 194,
    '▁mind': 195, '▁door': 196, '▁taken': 197, '▁course': 198, '▁words': 199,
    '▁turned': 200, '▁body': 201, '▁better': 202, '▁word': 203, '▁woman': 204,
    '▁almost': 205, '▁mother': 206, '▁heart': 207, '▁against': 208, '▁went': 209,
    '▁soon': 210, '▁home': 211, '▁love': 212, '▁heard': 213, '▁side': 214,
    '▁found': 215, '▁believe': 216, '▁children': 217, '▁morning': 218, '▁high': 219,
    '▁hello': 220, '▁thank': 221, '▁thanks': 222, '▁please': 223, '▁sorry': 224,
    '▁yes': 225, '▁help': 226, '▁friend': 227, '▁family': 228, '▁today': 229,
    '▁tomorrow': 230, '▁yesterday': 231, '▁week': 232, '▁month': 233, '▁water': 234,
    '▁food': 235, '▁eat': 236, '▁drink': 237, '▁sleep': 238, '▁read': 239,
    '▁write': 240, '▁speak': 241, '▁listen': 242, '▁understand': 243, '▁learn': 244,
    '▁teach': 245, '▁study': 246, '▁happy': 247, '▁beautiful': 248, '▁translate': 249,
    '▁translation': 250, '▁language': 251, '▁english': 252, '▁russian': 253,
  };

  static const Map<String, int> _defaultRuEnVocab = {
    '<pad>': 0, '<unk>': 1, '<s>': 2, '</s>': 3,
    '▁': 4, '▁и': 5, '▁в': 6, '▁на': 7, '▁что': 8, '▁с': 9,
    '▁не': 10, '▁как': 11, '▁это': 12, '▁я': 13, '▁он': 14,
    '▁она': 15, '▁они': 16, '▁мы': 17, '▁вы': 18, '▁ты': 19,
    '▁но': 20, '▁а': 21, '▁по': 22, '▁из': 23, '▁за': 24,
    '▁для': 25, '▁к': 26, '▁у': 27, '▁о': 28, '▁от': 29,
    '▁до': 30, '▁при': 31, '▁же': 32, '▁бы': 33, '▁ли': 34,
    '▁так': 35, '▁все': 36, '▁всё': 37, '▁если': 38, '▁когда': 39,
    '▁где': 40, '▁кто': 41, '▁чем': 42, '▁чего': 43, '▁или': 44,
    '▁был': 45, '▁была': 46, '▁было': 47, '▁были': 48, '▁быть': 49,
    '▁есть': 50, '▁будет': 51, '▁только': 52, '▁уже': 53, '▁ещё': 54,
    '▁ни': 55, '▁себя': 56, '▁свой': 57, '▁его': 58, '▁её': 59,
    '▁их': 60, '▁наш': 61, '▁ваш': 62, '▁мой': 63, '▁твой': 64,
    '▁один': 65, '▁два': 66, '▁три': 67, '▁много': 68, '▁мало': 69,
    '▁очень': 70, '▁хорошо': 71, '▁плохо': 72, '▁большой': 73, '▁маленький': 74,
    '▁новый': 75, '▁старый': 76, '▁первый': 77, '▁последний': 78, '▁другой': 79,
    '▁каждый': 80, '▁такой': 81, '▁какой': 82, '▁этот': 83, '▁тот': 84,
    '▁человек': 85, '▁люди': 86, '▁время': 87, '▁год': 88, '▁день': 89,
    '▁жизнь': 90, '▁мир': 91, '▁работа': 92, '▁дом': 93, '▁место': 94,
    '▁слово': 95, '▁рука': 96, '▁глаз': 97, '▁голова': 98, '▁дело': 99,
    '▁сторона': 100, '▁вопрос': 101, '▁город': 102, '▁страна': 103, '▁конец': 104,
    '▁говорить': 105, '▁сказать': 106, '▁знать': 107, '▁видеть': 108, '▁хотеть': 109,
    '▁мочь': 110, '▁думать': 111, '▁делать': 112, '▁идти': 113, '▁стать': 114,
    '▁дать': 115, '▁взять': 116, '▁найти': 117, '▁понять': 118, '▁жить': 119,
    '▁любить': 120, '▁работать': 121, '▁читать': 122, '▁писать': 123, '▁учить': 124,
    '▁привет': 125, '▁здравствуйте': 126, '▁спасибо': 127, '▁пожалуйста': 128, '▁да': 129,
    '▁нет': 130, '▁извините': 131, '▁помощь': 132, '▁друг': 133, '▁семья': 134,
    '▁сегодня': 135, '▁завтра': 136, '▁вчера': 137, '▁утро': 138, '▁вечер': 139,
    '▁ночь': 140, '▁вода': 141, '▁еда': 142, '▁перевод': 143, '▁переводчик': 144,
    '▁язык': 145, '▁английский': 146, '▁русский': 147, '▁понимать': 148, '▁учиться': 149,
  };

  Future<void> loadVocab(String direction) async {
    _vocab.clear();
    _reverseVocab.clear();
    
    final defaultVocab = direction == 'en_ru' ? _defaultEnRuVocab : _defaultRuEnVocab;
    _vocab.addAll(defaultVocab);
    
    for (final entry in _vocab.entries) {
      _reverseVocab[entry.value] = entry.key;
    }
    
    _isLoaded = true;
  }

  List<int> encode(String text) {
    if (!_isLoaded) {
      throw StateError('Tokenizer not loaded');
    }

    final normalized = text.toLowerCase().trim();
    final tokens = <int>[2];
    
    final words = normalized.split(RegExp(r'\s+'));
    
    for (final word in words) {
      final tokenKey = '▁$word';
      if (_vocab.containsKey(tokenKey)) {
        tokens.add(_vocab[tokenKey]!);
      } else {
        for (final char in word.split('')) {
          if (_vocab.containsKey(char)) {
            tokens.add(_vocab[char]!);
          } else {
            tokens.add(unkTokenId);
          }
        }
      }
    }
    
    tokens.add(3);
    return tokens;
  }

  String decode(List<int> tokens) {
    final words = <String>[];
    
    for (final token in tokens) {
      if (token == 0 || token == 2 || token == 3) continue;
      
      if (_reverseVocab.containsKey(token)) {
        var word = _reverseVocab[token]!;
        if (word.startsWith('▁')) {
          word = word.substring(1);
          if (words.isNotEmpty) {
            words.add(' ');
          }
        }
        words.add(word);
      }
    }
    
    var result = words.join('');
    if (result.isNotEmpty) {
      result = result[0].toUpperCase() + result.substring(1);
    }
    
    return result;
  }

  bool get isLoaded => _isLoaded;
}
