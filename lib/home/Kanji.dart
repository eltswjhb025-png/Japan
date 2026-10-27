
import 'package:flutter/material.dart';

class KanjiScreen extends StatelessWidget {
  const KanjiScreen({super.key});

  // Beginner Kanji characters, common readings, and meanings
  final List<Map<String, String>> kanji = const [
    {'char': '日', 'romaji': 'nichi', 'meaning': 'Sun / Day'},
    {'char': '月', 'romaji': 'getsu', 'meaning': 'Moon / Month'},
    {'char': '火', 'romaji': 'ka', 'meaning': 'Fire'},
    {'char': '水', 'romaji': 'sui', 'meaning': 'Water'},
    {'char': '木', 'romaji': 'moku', 'meaning': 'Tree / Wood'},

    {'char': '金', 'romaji': 'kin', 'meaning': 'Gold / Money'},
    {'char': '土', 'romaji': 'do', 'meaning': 'Earth / Soil'},
    {'char': '山', 'romaji': 'yama', 'meaning': 'Mountain'},
    {'char': '川', 'romaji': 'kawa', 'meaning': 'River'},
    {'char': '田', 'romaji': 'ta', 'meaning': 'Rice field'},

    {'char': '人', 'romaji': 'hito', 'meaning': 'Person'},
    {'char': '口', 'romaji': 'kuchi', 'meaning': 'Mouth'},
    {'char': '目', 'romaji': 'me', 'meaning': 'Eye'},
    {'char': '耳', 'romaji': 'mimi', 'meaning': 'Ear'},
    {'char': '手', 'romaji': 'te', 'meaning': 'Hand'},

    {'char': '足', 'romaji': 'ashi', 'meaning': 'Foot / Leg'},
    {'char': '力', 'romaji': 'chikara', 'meaning': 'Power / Strength'},
    {'char': '女', 'romaji': 'onna', 'meaning': 'Woman'},
    {'char': '男', 'romaji': 'otoko', 'meaning': 'Man'},
    {'char': '子', 'romaji': 'ko', 'meaning': 'Child'},

    {'char': '学', 'romaji': 'gaku', 'meaning': 'Learning / Study'},
    {'char': '校', 'romaji': 'kou', 'meaning': 'School'},
    {'char': '先', 'romaji': 'saki', 'meaning': 'Ahead / Previous'},
    {'char': '生', 'romaji': 'sei', 'meaning': 'Life / Birth'},
    {'char': '本', 'romaji': 'hon', 'meaning': 'Book / Origin'},

    {'char': '大', 'romaji': 'dai', 'meaning': 'Big'},
    {'char': '小', 'romaji': 'shou', 'meaning': 'Small'},
    {'char': '中', 'romaji': 'chuu', 'meaning': 'Middle / Inside'},
    {'char': '上', 'romaji': 'ue', 'meaning': 'Above'},
    {'char': '下', 'romaji': 'shita', 'meaning': 'Below'},

    {'char': '左', 'romaji': 'hidari', 'meaning': 'Left'},
    {'char': '右', 'romaji': 'migi', 'meaning': 'Right'},
    {'char': '東', 'romaji': 'higashi', 'meaning': 'East'},
    {'char': '西', 'romaji': 'nishi', 'meaning': 'West'},
    {'char': '南', 'romaji': 'minami', 'meaning': 'South'},

    {'char': '北', 'romaji': 'kita', 'meaning': 'North'},
    {'char': '年', 'romaji': 'nen', 'meaning': 'Year'},
    {'char': '時', 'romaji': 'ji', 'meaning': 'Time / Hour'},
    {'char': '分', 'romaji': 'fun', 'meaning': 'Minute / Part'},
    {'char': '円', 'romaji': 'en', 'meaning': 'Yen / Circle'},
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
          'K a n j i',
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

          // Create a button for every Kanji character
          children: kanji.map((item) {
            return _kanjiButton(
              item['char']!,
              item['romaji']!,
                  () {
                _showCharacterDialog(
                  context,
                  item['char']!,
                  item['romaji']!,
                  item['meaning']!,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  // KANJI BUTTON
  Widget _kanjiButton(
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
              // Japanese Kanji character
              Text(
                character,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 4),

              // Romanized reading
              Text(
                romaji,
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
    );
  }

  // CHARACTER DIALOG
  void _showCharacterDialog(
      BuildContext context,
      String character,
      String romaji,
      String meaning,
      ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.teal.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          // Selected Kanji
          title: Text(
            character,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.w500,
            ),
          ),

          // Reading and meaning
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                romaji,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                meaning,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
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
