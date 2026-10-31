import 'package:flutter/material.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  final List<Map<String, String>> family = const [
    {
      'word': 'How many people are there in your family?',
      'hiragana': 'ごかぞくはなんにんですか？',
      'romaji': 'Gokazoku wa nan-nin desu ka?'
    },

    {
      'word': 'Do you have....?',
      'hiragana': '…がありますか？',
      'romaji': '... ga arimasu ka?'
    },

    {
      'word': 'This is my...',
      'hiragana': 'これはわたしの…です。',
      'romaji': 'Kore wa watashi no ... desu.'
    },

    {
      'word': 'Brother',
      'hiragana': 'きょうだい',
      'romaji': 'Kyoudai'
    },
    {
      'word': 'Elder brother',
      'hiragana': 'あに',
      'romaji': 'Ani'
    },
    {
      'word': 'Younger brother',
      'hiragana': 'おとうと',
      'romaji': 'Otouto'
    },

    {
      'word': 'Sister',
      'hiragana': 'しまい',
      'romaji': 'Shimai'
    },
    {
      'word': 'Elder sister',
      'hiragana': 'あね',
      'romaji': 'Ane'
    },
    {
      'word': 'Younger sister',
      'hiragana': 'いもうと',
      'romaji': 'Imouto'
    },

    {
      'word': 'Mother',
      'hiragana': 'はは',
      'romaji': 'Haha'
    },
    {
      'word': 'Father',
      'hiragana': 'ちち',
      'romaji': 'Chichi'
    },

    {
      'word': 'Son',
      'hiragana': 'むすこ',
      'romaji': 'Musuko'
    },
    {
      'word': 'Daughter',
      'hiragana': 'むすめ',
      'romaji': 'Musume'
    },

    {
      'word': 'Grandson',
      'hiragana': 'まご',
      'romaji': 'Mago'
    },
    {
      'word': 'Granddaughter',
      'hiragana': 'まご',
      'romaji': 'Mago'
    },

    {
      'word': 'Grandmother',
      'hiragana': 'そぼ',
      'romaji': 'Sobo'
    },
    {
      'word': 'Grandfather',
      'hiragana': 'そふ',
      'romaji': 'Sofu'
    },

    {
      'word': 'Uncle',
      'hiragana': 'おじ',
      'romaji': 'Oji'
    },
    {
      'word': 'Aunt',
      'hiragana': 'おば',
      'romaji': 'Oba'
    },

    {
      'word': 'Husband',
      'hiragana': 'おっと',
      'romaji': 'Otto'
    },
    {
      'word': 'Wife',
      'hiragana': 'つま',
      'romaji': 'Tsuma'
    },

    {
      'word': 'Boyfriend',
      'hiragana': 'かれし',
      'romaji': 'Kareshi'
    },
    {
      'word': 'Girlfriend',
      'hiragana': 'かのじょ',
      'romaji': 'Kanojo'
    },

    {
      'word': 'Friend',
      'hiragana': 'ともだち',
      'romaji': 'Tomodachi'
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
          'F a m i l y',
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
        children: family.map((item) {
          return _familyButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // FAMILY BUTTON
  Widget _familyButton(
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
//