import 'dart:ui';
import 'package:flutter/material.dart';

class HiraganaScreen extends StatelessWidget {
  const HiraganaScreen({super.key});

  // Hiragana characters and their romanized pronunciations
  final List<Map<String, String>> hiragana = const [
    {'char': 'あ', 'romaji': 'a'},
    {'char': 'い', 'romaji': 'i'},
    {'char': 'う', 'romaji': 'u'},
    {'char': 'え', 'romaji': 'e'},
    {'char': 'お', 'romaji': 'o'},

    {'char': 'か', 'romaji': 'ka'},
    {'char': 'き', 'romaji': 'ki'},
    {'char': 'く', 'romaji': 'ku'},
    {'char': 'け', 'romaji': 'ke'},
    {'char': 'こ', 'romaji': 'ko'},

    {'char': 'さ', 'romaji': 'sa'},
    {'char': 'し', 'romaji': 'shi'},
    {'char': 'す', 'romaji': 'su'},
    {'char': 'せ', 'romaji': 'se'},
    {'char': 'そ', 'romaji': 'so'},

    {'char': 'た', 'romaji': 'ta'},
    {'char': 'ち', 'romaji': 'chi'},
    {'char': 'つ', 'romaji': 'tsu'},
    {'char': 'て', 'romaji': 'te'},
    {'char': 'と', 'romaji': 'to'},

    {'char': 'な', 'romaji': 'na'},
    {'char': 'に', 'romaji': 'ni'},
    {'char': 'ぬ', 'romaji': 'nu'},
    {'char': 'ね', 'romaji': 'ne'},
    {'char': 'の', 'romaji': 'no'},

    {'char': 'は', 'romaji': 'ha'},
    {'char': 'ひ', 'romaji': 'hi'},
    {'char': 'ふ', 'romaji': 'fu'},
    {'char': 'へ', 'romaji': 'he'},
    {'char': 'ほ', 'romaji': 'ho'},

    {'char': 'ま', 'romaji': 'ma'},
    {'char': 'み', 'romaji': 'mi'},
    {'char': 'む', 'romaji': 'mu'},
    {'char': 'め', 'romaji': 'me'},
    {'char': 'も', 'romaji': 'mo'},

    {'char': 'や', 'romaji': 'ya'},
    {'char': 'ゆ', 'romaji': 'yu'},
    {'char': 'よ', 'romaji': 'yo'},

    {'char': 'ら', 'romaji': 'ra'},
    {'char': 'り', 'romaji': 'ri'},
    {'char': 'る', 'romaji': 'ru'},
    {'char': 'れ', 'romaji': 're'},
    {'char': 'ろ', 'romaji': 'ro'},

    {'char': 'わ', 'romaji': 'wa'},
    {'char': 'を', 'romaji': 'wo'},
    {'char': 'ん', 'romaji': 'n'},
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
          'H i r a g a n a',
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
      body: Padding(
        padding: const EdgeInsets.all(12),

        child: GridView.count(
          // Number of buttons per row
          crossAxisCount: 5,

          // Space between columns
          crossAxisSpacing: 8,

          // Space between rows
          mainAxisSpacing: 8,

          // Makes the buttons slightly taller than they are wide
          childAspectRatio: 0.90,

          // Create a button for every Hiragana character
          children: hiragana.map((item) {
            return _hiraganaButton(
              item['char']!,
              item['romaji']!,
                  () {
                _showCharacterDialog(
                  context,
                  item['char']!,
                  item['romaji']!,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  // HIRAGANA BUTTON
  Widget _hiraganaButton(
      String character,
      String romaji,
      VoidCallback onTap,
      ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.20),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withOpacity(0.35),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Japanese character
              Text(
                character,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 2),

              // Romanized pronunciation
              Text(
                romaji,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // CHARACTER DIALOG
  void _showCharacterDialog(
      BuildContext context,
      String character,
      String romaji,
      ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.teal.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          // Selected character
          title: Text(
            character,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.w500,
            ),
          ),

          // Romanized pronunciation
          content: Text(
            romaji,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 24,
            ),
          ),

          actionsAlignment: MainAxisAlignment.center,

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Close',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}