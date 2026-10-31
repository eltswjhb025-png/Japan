import 'package:flutter/material.dart';

class ColoursScreen extends StatelessWidget {
  const ColoursScreen({super.key});

  final List<Map<String, String>> colours = const [
    {'word': 'Dark colour', 'hiragana': 'こいいろ', 'romaji': 'Koi iro'},
    {'word': 'Light colour', 'hiragana': 'うすいいろ', 'romaji': 'Usui iro'},
    {'word': 'Black', 'hiragana': 'くろ', 'romaji': 'Kuro'},
    {'word': 'Brown', 'hiragana': 'ちゃいろ', 'romaji': 'Chairo'},
    {'word': 'Grey', 'hiragana': 'はいいろ', 'romaji': 'Haiiro'},
    {'word': 'Red', 'hiragana': 'あか', 'romaji': 'Aka'},
    {'word': 'Green', 'hiragana': 'みどり', 'romaji': 'Midori'},
    {'word': 'Yellow', 'hiragana': 'きいろ', 'romaji': 'Kiiro'},
    {'word': 'Blue', 'hiragana': 'あお', 'romaji': 'Ao'},
    {'word': 'Pink', 'hiragana': 'ももいろ', 'romaji': 'Momoiro'},
    {'word': 'Purple', 'hiragana': 'むらさき', 'romaji': 'Murasaki'},
    {'word': 'White', 'hiragana': 'しろ', 'romaji': 'Shiro'},
    {'word': 'Orange', 'hiragana': 'だいだいいろ', 'romaji': 'Daidaiiro'},
    {'word': 'Dark blue', 'hiragana': 'こいあお', 'romaji': 'Koi ao'},
    {'word': 'Gold', 'hiragana': 'きんいろ', 'romaji': 'Kin-iro'},
    {'word': 'Silver', 'hiragana': 'ぎんいろ', 'romaji': 'Gin-iro'},
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
          'C o l o u r s',
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
        children: colours.map((item) {
          return _coloursButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // COLOURS BUTTON
  Widget _coloursButton(
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