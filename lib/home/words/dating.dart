import 'package:flutter/material.dart';

class DatingScreen extends StatelessWidget {
  const DatingScreen({super.key});

  final List<Map<String, String>> dating = const [
    {
      'word': "I'm single.",
      'hiragana': 'わたしはどくしんです。',
      'romaji': 'Watashi wa dokushin desu.'
    },

    {
      'word': 'Do you have a girlfriend?',
      'hiragana': 'かのじょがいますか？',
      'romaji': 'Kanojo ga imasu ka?'
    },

    {
      'word': 'Do you have a boyfriend?',
      'hiragana': 'かれしがいますか？',
      'romaji': 'Kareshi ga imasu ka?'
    },

    {
      'word': 'I have a girlfriend.',
      'hiragana': 'かのじょがいます。',
      'romaji': 'Kanojo ga imasu.'
    },

    {
      'word': "I'm here with my boyfriend.",
      'hiragana': 'かれしといっしょにきています。',
      'romaji': 'Kareshi to issho ni kiteimasu.'
    },

    {
      'word': 'Are you single?',
      'hiragana': 'どくしんですか？',
      'romaji': 'Dokushin desu ka?'
    },

    {
      'word': 'Are you married?',
      'hiragana': 'けっこんしていますか？',
      'romaji': 'Kekkon shiteimasu ka?'
    },

    {
      'word': "I'm married.",
      'hiragana': 'けっこんしています。',
      'romaji': 'Kekkon shiteimasu.'
    },

    {
      'word': 'Would you like to do something together?',
      'hiragana': 'いっしょになにかしませんか？',
      'romaji': 'Issho ni nanika shimasen ka?'
    },

    {
      'word': 'Would you like to go for a walk with me?',
      'hiragana': 'いっしょにさんぽしませんか？',
      'romaji': 'Issho ni sanpo shimasen ka?'
    },

    {
      'word': 'Would you like to watch a movie?',
      'hiragana': 'えいがをみませんか？',
      'romaji': 'Eiga o mimasen ka?'
    },

    {
      'word': 'Are you available tomorrow?',
      'hiragana': 'あしたひまですか？',
      'romaji': 'Ashita hima desu ka?'
    },

    {
      'word': "I'm available tomorrow.",
      'hiragana': 'あしたひまです。',
      'romaji': 'Ashita hima desu.'
    },

    {
      'word': 'Can I buy you a drink?',
      'hiragana': 'のみものをおごってもいいですか？',
      'romaji': 'Nomimono o ogotte mo ii desu ka?'
    },

    {
      'word': 'What will you drink?',
      'hiragana': 'なにをのみますか？',
      'romaji': 'Nani o nomimasu ka?'
    },

    {
      'word': 'Will I see you again?',
      'hiragana': 'またあえますか？',
      'romaji': 'Mata aemasu ka?'
    },

    {
      'word': 'When can we meet again?',
      'hiragana': 'つぎはいつあえますか？',
      'romaji': 'Tsugi wa itsu aemasu ka?'
    },

    {
      'word': 'Do you mind if I sit here? (to join someone)',
      'hiragana': 'ここにすわってもいいですか？',
      'romaji': 'Koko ni suwatte mo ii desu ka?'
    },

    {
      'word': 'I like you very much.',
      'hiragana': 'あなたがだいすきです。',
      'romaji': 'Anata ga daisuki desu.'
    },

    {
      'word': 'I love you.',
      'hiragana': 'あいしています。',
      'romaji': 'Ai shiteimasu.'
    },

    {
      'word': 'You are very cute.',
      'hiragana': 'あなたはとてもかわいいです。',
      'romaji': 'Anata wa totemo kawaii desu.'
    },

    {
      'word': 'You are very beautiful.',
      'hiragana': 'あなたはとてもきれいです。',
      'romaji': 'Anata wa totemo kirei desu.'
    },

    {
      'word': 'You are great.',
      'hiragana': 'あなたはすてきです。',
      'romaji': 'Anata wa suteki desu.'
    },

    {
      'word': 'Can I call you?',
      'hiragana': 'でんわしてもいいですか？',
      'romaji': 'Denwa shite mo ii desu ka?'
    },

    {
      'word': 'Do you have a condom?',
      'hiragana': 'こんどーむをもっていますか？',
      'romaji': 'Kondoomu o motteimasu ka?'
    },

    {
      'word': 'I have a condom.',
      'hiragana': 'こんどーむをもっています。',
      'romaji': 'Kondoomu o motteimasu.'
    },

    {
      'word': "I won't do it without a condom.",
      'hiragana': 'こんどーむなしではしません。',
      'romaji': 'Kondoomu nashi de wa shimasen.'
    },

    {
      'word': 'Will you go out with me?',
      'hiragana': 'わたしとつきあってくれますか？',
      'romaji': 'Watashi to tsukiatte kuremasu ka?'
    },

    {
      'word': 'Will you marry me?',
      'hiragana': 'わたしとけっこんしてくれますか？',
      'romaji': 'Watashi to kekkon shite kuremasu ka?'
    },

    {
      'word': 'Stop calling me.',
      'hiragana': 'もうでんわしないでください。',
      'romaji': 'Mou denwa shinaide kudasai.'
    },

    {
      'word': 'Are you seeing someone else?',
      'hiragana': 'ほかのひとともつきあっていますか？',
      'romaji': 'Hoka no hito to mo tsukiatteimasu ka?'
    },

    {
      'word': "I don't think it's working out.",
      'hiragana': 'うまくいっていないとおもいます。',
      'romaji': 'Umaku itte inai to omoimasu.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      // APP BAR
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,

        iconTheme: const IconThemeData(
          color: Colors.white,
        ),

        title: const Text(
          'D a t i n g',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Arial',
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),

      // BODY
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: dating.map((item) {
          return _datingButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // DATING BUTTON
  Widget _datingButton(
      String word,
      String hiragana,
      String romaji,
      ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),

      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.30),

        borderRadius: BorderRadius.circular(12),

        border: Border.all(
          color: Colors.white.withValues(alpha: 0.35),
          width: 1,
        ),
      ),

      child: Material(
        color: Colors.transparent,

        borderRadius: BorderRadius.circular(12),

        clipBehavior: Clip.antiAlias,

        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,

              children: [
                // ENGLISH WORD
                Text(
                  word,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 3),

                // HIRAGANA
                Text(
                  hiragana,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 3),

                // ROMANIZED READING
                Text(
                  romaji,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}