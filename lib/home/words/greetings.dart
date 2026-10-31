import 'dart:ui';
import 'package:flutter/material.dart';

class GreetingsScreen extends StatelessWidget {
  const GreetingsScreen({super.key});

  final List<Map<String, String>> greeting = const [
    {
      'word': 'Hello',
      'hiragana': 'こんにちは',
      'romaji': 'Konnichiwa'
    },

    {
      'word': 'How are you?',
      'hiragana': 'おげんきですか？',
      'romaji': 'Ogenki desu ka?'
    },

    {
      'word': "I'm fine, thanks.",
      'hiragana': 'げんきです、ありがとう。',
      'romaji': 'Genki desu, arigatou.'
    },

    {
      'word': "I'm not well, thanks.",
      'hiragana': 'あまりげんきではありません。',
      'romaji': 'Amari genki dewa arimasen.'
    },

    {
      'word': "What's your name?",
      'hiragana': 'おなまえはなんですか？',
      'romaji': 'Onamae wa nan desu ka?'
    },

    {
      'word': 'My name is...',
      'hiragana': 'わたしのなまえは…です。',
      'romaji': 'Watashi no namae wa ... desu.'
    },

    {
      'word': 'See you later.',
      'hiragana': 'またあとで。',
      'romaji': 'Mata ato de.'
    },

    {
      'word': 'Goodbye.',
      'hiragana': 'さようなら。',
      'romaji': 'Sayounara.'
    },

    {
      'word': 'Nice to meet you.',
      'hiragana': 'はじめまして。',
      'romaji': 'Hajimemashite.'
    },

    {
      'word': 'What about you?',
      'hiragana': 'あなたは？',
      'romaji': 'Anata wa?'
    },

    {
      'word': 'Good luck!',
      'hiragana': 'がんばって！',
      'romaji': 'Ganbatte!'
    },

    {
      'word': 'Take care.',
      'hiragana': 'きをつけてね。',
      'romaji': 'Ki o tsukete ne.'
    },

    {
      'word': "It's been a while.",
      'hiragana': 'おひさしぶりです。',
      'romaji': 'Ohisashiburi desu.'
    },

    {
      'word': 'Can you speak English?',
      'hiragana': 'えいごをはなせますか？',
      'romaji': 'Eigo o hanasemasu ka?'
    },

    {
      'word': 'I can speak a little Korean.',
      'hiragana': 'かんこくごをすこしはなせます。',
      'romaji': 'Kankokugo o sukoshi hanasemasu.'
    },

    {
      'word': "I can't speak Korean.",
      'hiragana': 'かんこくごをはなせません。',
      'romaji': 'Kankokugo o hanasemasen.'
    },

    {
      'word': "I'm from (country)...",
      'hiragana': '（くに）からきました。',
      'romaji': '(Kuni) kara kimashita.'
    },

    {
      'word': 'How old are you?',
      'hiragana': 'なんさいですか？',
      'romaji': 'Nansai desu ka?'
    },

    {
      'word': "I'm 30 years old.",
      'hiragana': 'さんじゅっさいです。',
      'romaji': 'Sanjussai desu.'
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
          'G r e e t i n g s',
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
        children: greeting.map((item) {
          return _greetButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // GREET BUTTON
  Widget _greetButton(
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