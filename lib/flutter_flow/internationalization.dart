import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
    String? esText = '',
  }) =>
      [ptText, enText, esText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    'glpn5p3j': {
      'pt': 'O jogo',
      'en': '',
      'es': '',
    },
    'rhb1nnvv': {
      'pt': 'Usuário',
      'en': '',
      'es': '',
    },
    'wkebxxjm': {
      'pt': 'Senha',
      'en': '',
      'es': '',
    },
    'm0ups3w1': {
      'pt': 'Login',
      'en': '',
      'es': '',
    },
    'qkfkm9vb': {
      'pt': 'Esqueceu a senha?',
      'en': '',
      'es': '',
    },
    'wxi0jnr6': {
      'pt': 'Ou faça o Login com uma rede social',
      'en': '',
      'es': '',
    },
    'vwoxwvdk': {
      'pt': 'NOVO USUÁRIO',
      'en': '',
      'es': '',
    },
  },
  // signup
  {
    'ncbaw239': {
      'pt': 'O jogo',
      'en': '',
      'es': '',
    },
    '27nuiywe': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'f7nqedna': {
      'pt': 'Insira seu email',
      'en': '',
      'es': '',
    },
    'sbynisiu': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'r88t8mr6': {
      'pt': 'Insira sua senha',
      'en': '',
      'es': '',
    },
    'tsyvdsr1': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '0mdal1tc': {
      'pt': 'Confirme sua senha',
      'en': '',
      'es': '',
    },
    '6y8fgndf': {
      'pt': 'Escolha seu cargo',
      'en': '',
      'es': '',
    },
    'ezd0e7v7': {
      'pt': 'investigador',
      'en': '',
      'es': '',
    },
    'hd9d6q5s': {
      'pt': 'Avaliador',
      'en': '',
      'es': '',
    },
  },
  // signupAvaliador
  {
    'zmg99mxf': {
      'pt': 'Nome do professor',
      'en': '',
      'es': '',
    },
    '90dlc737': {
      'pt': 'Escola',
      'en': '',
      'es': '',
    },
    'b02uu5kg': {
      'pt': 'Turma',
      'en': '',
      'es': '',
    },
    'iaqek6z7': {
      'pt': 'Equipes',
      'en': '',
      'es': '',
    },
    '1pvch0lr': {
      'pt': 'Equipe',
      'en': '',
      'es': '',
    },
    'j95jyfvi': {
      'pt': 'Option 1',
      'en': '',
      'es': '',
    },
    'mlmirfy1': {
      'pt': 'Selecione uma cor',
      'en': '',
      'es': '',
    },
    '6of8hac6': {
      'pt': 'Salvar',
      'en': '',
      'es': '',
    },
    'yts9wxcr': {
      'pt': 'Criar perfil como Avaliador',
      'en': '',
      'es': '',
    },
  },
  // forgotPassword
  {
    '9z3r64g9': {
      'pt': 'Voltar',
      'en': '',
      'es': '',
    },
    'x9ajp4qt': {
      'pt': 'Esqueceu a senha?',
      'en': '',
      'es': '',
    },
    's8mygjzh': {
      'pt':
          'Ah fique tranquilo(a) já já te enviaremos um e-mail com um link para redefinir sua senha, digite o e-mail associado à sua conta abaixo.',
      'en': '',
      'es': '',
    },
    'cajittbp': {
      'pt': 'Email',
      'en': '',
      'es': '',
    },
    'tvvaytw6': {
      'pt': 'Digite aqui seu email...',
      'en': '',
      'es': '',
    },
    '781506k9': {
      'pt': 'Send Link',
      'en': '',
      'es': '',
    },
    'heyvaywv': {
      'pt': 'Home',
      'en': '',
      'es': '',
    },
  },
  // signupInvestigador
  {
    'dmp4dkqd': {
      'pt': 'Nome do professor',
      'en': '',
      'es': '',
    },
    '5c0oii9d': {
      'pt': 'Escola',
      'en': '',
      'es': '',
    },
    'iemmgtus': {
      'pt': 'Turma',
      'en': '',
      'es': '',
    },
    'vv38ga4t': {
      'pt': 'Equipes',
      'en': '',
      'es': '',
    },
    '9ioleydu': {
      'pt': 'Equipe',
      'en': '',
      'es': '',
    },
    '6bx360ce': {
      'pt': 'Option 1',
      'en': '',
      'es': '',
    },
    'gsrzb51p': {
      'pt': 'Selecione uma cor',
      'en': '',
      'es': '',
    },
    'dow3s2g3': {
      'pt': 'Salvar',
      'en': '',
      'es': '',
    },
    '8a6rb6vt': {
      'pt': 'Criar perfil como Investigador',
      'en': '',
      'es': '',
    },
  },
  // landing
  {
    'd0lv1ozg': {
      'pt': 'Conheça o cosmic!',
      'en': '',
      'es': '',
    },
    'wxac5tzu': {
      'pt': 'Um jogo para debater cosmologia em seu contexto social!',
      'en': '',
      'es': '',
    },
    's6m2fsn6': {
      'pt': 'Jogar',
      'en': '',
      'es': '',
    },
    'ceu28ioi': {
      'pt': 'Explore o mundo!',
      'en': '',
      'es': '',
    },
    'ijrw70db': {
      'pt':
          'Colete fichas ao explorar o mundo e receba informações que ajude sua próxima jogada.',
      'en': '',
      'es': '',
    },
    'tsmh2ew7': {
      'pt': 'Jogar',
      'en': '',
      'es': '',
    },
    'mvewlcr4': {
      'pt': 'Elabore o relatório',
      'en': '',
      'es': '',
    },
    'vt8qsznw': {
      'pt':
          'use seus aprendizados e monte um relatório buscando defender sua pesquisa!',
      'en': '',
      'es': '',
    },
    'v8gejjjp': {
      'pt': 'Jogar',
      'en': '',
      'es': '',
    },
    'j7ms93oa': {
      'pt': 'Seja avaliado!',
      'en': '',
      'es': '',
    },
    'dahp7b92': {
      'pt':
          'Após o envio, seu relatório é avaliador pelo professor e você receberá um feedback.',
      'en': '',
      'es': '',
    },
    'n3w6u9r2': {
      'pt': 'Jogar',
      'en': '',
      'es': '',
    },
  },
  // Home
  {
    'tfb7afhm': {
      'pt': 'Fichas',
      'en': '',
      'es': '',
    },
    'v7vxtsz8': {
      'pt': '24',
      'en': '',
      'es': '',
    },
    '4dr9tay3': {
      'pt': 'Avaliação',
      'en': '',
      'es': '',
    },
    'zb3xmcb2': {
      'pt': '16',
      'en': '',
      'es': '',
    },
    'uf0l9xpc': {
      'pt': 'Feedback',
      'en': '',
      'es': '',
    },
    '49uvpwbm': {
      'pt': '426',
      'en': '',
      'es': '',
    },
    '3j988npz': {
      'pt': 'Investigações',
      'en': '',
      'es': '',
    },
    'uxk0f2o9': {
      'pt': 'EUA #1',
      'en': '',
      'es': '',
    },
    'ic3s6ebo': {
      'pt': '4 Members',
      'en': '',
      'es': '',
    },
    't2acl0a2': {
      'pt': 'Latest Activity',
      'en': '',
      'es': '',
    },
    'wrbvo286': {
      'pt': 'Mon, 24',
      'en': '',
      'es': '',
    },
    'c055shm5': {
      'pt': '4:00pm',
      'en': '',
      'es': '',
    },
    '2chlcuec': {
      'pt': 'ING #2',
      'en': '',
      'es': '',
    },
    'djlecqve': {
      'pt': '4 Members',
      'en': '',
      'es': '',
    },
    '8jiuzt9h': {
      'pt': 'Latest Activity',
      'en': '',
      'es': '',
    },
    'ikv4b6js': {
      'pt': 'Mon, 24',
      'en': '',
      'es': '',
    },
    'g7zzpsl8': {
      'pt': '4:00pm',
      'en': '',
      'es': '',
    },
    '4uarb2gp': {
      'pt': 'EUA #4',
      'en': '',
      'es': '',
    },
    'w5q8vgx8': {
      'pt': '2 Members',
      'en': '',
      'es': '',
    },
    '96stkzq7': {
      'pt': 'Latest Activity',
      'en': '',
      'es': '',
    },
    'oh1nq34w': {
      'pt': 'Mon, 24',
      'en': '',
      'es': '',
    },
    'x79vk7tb': {
      'pt': '4:00pm',
      'en': '',
      'es': '',
    },
    'axrs4lnf': {
      'pt': 'My Progress',
      'en': '',
      'es': '',
    },
    'tiw0xi4r': {
      'pt': 'Home',
      'en': '',
      'es': '',
    },
  },
  // Miscellaneous
  {
    '6qq439hz': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'j6fcxnik': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'e4ybpu42': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '7f600nh9': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'gb64a01z': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'qtvxzglw': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'mxhs75xk': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '3fhmv2dg': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'iw6j9zwb': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'w6tgiyli': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'w0a4g3je': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'sv7gds3j': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'vtxtndut': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'z7d8bryz': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'rbj81o3h': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'wu2r3qgw': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'n2udp318': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'f4n7n4bn': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'fq0yefe3': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '5nl6gbmu': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'ates3e5l': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'oqm4vyao': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
