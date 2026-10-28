
import 'dart:math';
import 'package:flutter/material.dart';

class KanjiFlashcardsScreen extends StatefulWidget {
  const KanjiFlashcardsScreen({super.key});

  @override
  State<KanjiFlashcardsScreen> createState() =>
      _KanjiFlashcardsScreenState();
}

class _KanjiFlashcardsScreenState
    extends State<KanjiFlashcardsScreen> {
  final List<Map<String, String>> cards = [
    {'character': '日', 'reading': 'nichi', 'meaning': 'Sun / Day'},
    {'character': '月', 'reading': 'getsu', 'meaning': 'Moon / Month'},
    {'character': '火', 'reading': 'ka', 'meaning': 'Fire'},
    {'character': '水', 'reading': 'sui', 'meaning': 'Water'},
    {'character': '木', 'reading': 'moku', 'meaning': 'Tree / Wood'},
    {'character': '金', 'reading': 'kin', 'meaning': 'Gold / Money'},
    {'character': '土', 'reading': 'do', 'meaning': 'Earth / Soil'},
    {'character': '山', 'reading': 'yama', 'meaning': 'Mountain'},
    {'character': '川', 'reading': 'kawa', 'meaning': 'River'},
    {'character': '田', 'reading': 'ta', 'meaning': 'Rice field'},
    {'character': '人', 'reading': 'hito', 'meaning': 'Person'},
    {'character': '口', 'reading': 'kuchi', 'meaning': 'Mouth'},
    {'character': '目', 'reading': 'me', 'meaning': 'Eye'},
    {'character': '耳', 'reading': 'mimi', 'meaning': 'Ear'},
    {'character': '手', 'reading': 'te', 'meaning': 'Hand'},
    {'character': '足', 'reading': 'ashi', 'meaning': 'Foot / Leg'},
    {'character': '力', 'reading': 'chikara', 'meaning': 'Power / Strength'},
    {'character': '女', 'reading': 'onna', 'meaning': 'Woman'},
    {'character': '男', 'reading': 'otoko', 'meaning': 'Man'},
    {'character': '子', 'reading': 'ko', 'meaning': 'Child'},
    {'character': '学', 'reading': 'gaku', 'meaning': 'Study / Learning'},
    {'character': '校', 'reading': 'kou', 'meaning': 'School'},
    {'character': '先', 'reading': 'saki', 'meaning': 'Ahead / Previous'},
    {'character': '生', 'reading': 'sei', 'meaning': 'Life / Birth'},
    {'character': '本', 'reading': 'hon', 'meaning': 'Book / Origin'},
    {'character': '大', 'reading': 'dai', 'meaning': 'Big / Large'},
    {'character': '小', 'reading': 'shou', 'meaning': 'Small'},
    {'character': '中', 'reading': 'chuu', 'meaning': 'Middle / Inside'},
    {'character': '上', 'reading': 'ue', 'meaning': 'Above / Up'},
    {'character': '下', 'reading': 'shita', 'meaning': 'Below / Down'},
    {'character': '左', 'reading': 'hidari', 'meaning': 'Left'},
    {'character': '右', 'reading': 'migi', 'meaning': 'Right'},
    {'character': '東', 'reading': 'higashi', 'meaning': 'East'},
    {'character': '西', 'reading': 'nishi', 'meaning': 'West'},
    {'character': '南', 'reading': 'minami', 'meaning': 'South'},
    {'character': '北', 'reading': 'kita', 'meaning': 'North'},
    {'character': '年', 'reading': 'nen', 'meaning': 'Year'},
    {'character': '時', 'reading': 'ji', 'meaning': 'Time / Hour'},
    {'character': '分', 'reading': 'fun', 'meaning': 'Minute / Part'},
    {'character': '円', 'reading': 'en', 'meaning': 'Yen / Circle'},
  ];

  int currentIndex = 0;
  bool showAnswer = false;

  void flipCard() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  void nextCard() {
    setState(() {
      currentIndex = (currentIndex + 1) % cards.length;
      showAnswer = false;
    });
  }

  void previousCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + cards.length) % cards.length;
      showAnswer = false;
    });
  }

  void shuffleCards() {
    setState(() {
      cards.shuffle(Random());
      currentIndex = 0;
      showAnswer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final card = cards[currentIndex];

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'K a n j i',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            Text(
              'Card ${currentIndex + 1} of ${cards.length}',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: flipCard,
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 380,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.45),
                        width: 1.5,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          showAnswer
                              ? Icons.check_circle_outline
                              : Icons.touch_app,
                          color: Colors.white70,
                          size: 30,
                        ),

                        const SizedBox(height: 20),

                        Text(
                          card['character']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        if (showAnswer) ...[
                          const SizedBox(height: 12),

                          Text(
                            card['reading']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            card['meaning']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 19,
                            ),
                          ),
                        ],

                        const SizedBox(height: 25),

                        Text(
                          showAnswer
                              ? 'READING & MEANING'
                              : 'TAP TO REVEAL ANSWER',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            letterSpacing: 2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: _kanjiFlashcardButton(
                    icon: Icons.arrow_back,
                    label: 'Previous',
                    onTap: previousCard,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: _kanjiFlashcardButton(
                    icon: Icons.arrow_forward,
                    label: 'Next',
                    onTap: nextCard,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: _kanjiFlashcardButton(
                icon: Icons.shuffle,
                label: 'Shuffle Cards',
                onTap: shuffleCards,
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

Widget _kanjiFlashcardButton({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
}) {
  return Material(
    color: Colors.white.withOpacity(0.10),
    borderRadius: BorderRadius.circular(14),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Colors.white.withOpacity(0.35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 19),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
