
import 'package:flutter/material.dart';

class KatakanaScreen extends StatelessWidget {
  const KatakanaScreen({super.key});

  // Basic Katakana characters and their romanized pronunciations
  final List<Map<String, String>> katakana = const [
    {'char': 'ア', 'romaji': 'a'},
    {'char': 'イ', 'romaji': 'i'},
    {'char': 'ウ', 'romaji': 'u'},
    {'char': 'エ', 'romaji': 'e'},
    {'char': 'オ', 'romaji': 'o'},

    {'char': 'カ', 'romaji': 'ka'},
    {'char': 'キ', 'romaji': 'ki'},
    {'char': 'ク', 'romaji': 'ku'},
    {'char': 'ケ', 'romaji': 'ke'},
    {'char': 'コ', 'romaji': 'ko'},

    {'char': 'サ', 'romaji': 'sa'},
    {'char': 'シ', 'romaji': 'shi'},
    {'char': 'ス', 'romaji': 'su'},
    {'char': 'セ', 'romaji': 'se'},
    {'char': 'ソ', 'romaji': 'so'},

    {'char': 'タ', 'romaji': 'ta'},
    {'char': 'チ', 'romaji': 'chi'},
    {'char': 'ツ', 'romaji': 'tsu'},
    {'char': 'テ', 'romaji': 'te'},
    {'char': 'ト', 'romaji': 'to'},

    {'char': 'ナ', 'romaji': 'na'},
    {'char': 'ニ', 'romaji': 'ni'},
    {'char': 'ヌ', 'romaji': 'nu'},
    {'char': 'ネ', 'romaji': 'ne'},
    {'char': 'ノ', 'romaji': 'no'},

    {'char': 'ハ', 'romaji': 'ha'},
    {'char': 'ヒ', 'romaji': 'hi'},
    {'char': 'フ', 'romaji': 'fu'},
    {'char': 'ヘ', 'romaji': 'he'},
    {'char': 'ホ', 'romaji': 'ho'},

    {'char': 'マ', 'romaji': 'ma'},
    {'char': 'ミ', 'romaji': 'mi'},
    {'char': 'ム', 'romaji': 'mu'},
    {'char': 'メ', 'romaji': 'me'},
    {'char': 'モ', 'romaji': 'mo'},

    {'char': 'ヤ', 'romaji': 'ya'},
    {'char': 'ユ', 'romaji': 'yu'},
    {'char': 'ヨ', 'romaji': 'yo'},

    {'char': 'ラ', 'romaji': 'ra'},
    {'char': 'リ', 'romaji': 'ri'},
    {'char': 'ル', 'romaji': 'ru'},
    {'char': 'レ', 'romaji': 're'},
    {'char': 'ロ', 'romaji': 'ro'},

    {'char': 'ワ', 'romaji': 'wa'},
    {'char': 'ヲ', 'romaji': 'wo'},
    {'char': 'ン', 'romaji': 'n'},
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
          'K a t a k a n a',
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

          // Makes the buttons square
          childAspectRatio: 1,

          // Create a button for every Katakana character
          children: katakana.map((item) {
            return _katakanaButton(
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

  // KATAKANA BUTTON
  Widget _katakanaButton(
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
            children: [
              // Japanese Katakana character
              Text(
                character,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 4),

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

          // Selected Katakana character
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
