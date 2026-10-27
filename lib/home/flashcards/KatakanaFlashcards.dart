
import 'dart:math';
import 'package:flutter/material.dart';

class KatakanaFlashcardsScreen extends StatefulWidget {
  const KatakanaFlashcardsScreen({super.key});

  @override
  State<KatakanaFlashcardsScreen> createState() =>
      _KatakanaFlashcardsScreenState();
}

class _KatakanaFlashcardsScreenState
    extends State<KatakanaFlashcardsScreen> {
  final List<Map<String, String>> cards = [
    {'character': 'ア', 'answer': 'a'},
    {'character': 'イ', 'answer': 'i'},
    {'character': 'ウ', 'answer': 'u'},
    {'character': 'エ', 'answer': 'e'},
    {'character': 'オ', 'answer': 'o'},
    {'character': 'カ', 'answer': 'ka'},
    {'character': 'キ', 'answer': 'ki'},
    {'character': 'ク', 'answer': 'ku'},
    {'character': 'ケ', 'answer': 'ke'},
    {'character': 'コ', 'answer': 'ko'},
    {'character': 'サ', 'answer': 'sa'},
    {'character': 'シ', 'answer': 'shi'},
    {'character': 'ス', 'answer': 'su'},
    {'character': 'セ', 'answer': 'se'},
    {'character': 'ソ', 'answer': 'so'},
    {'character': 'タ', 'answer': 'ta'},
    {'character': 'チ', 'answer': 'chi'},
    {'character': 'ツ', 'answer': 'tsu'},
    {'character': 'テ', 'answer': 'te'},
    {'character': 'ト', 'answer': 'to'},
    {'character': 'ナ', 'answer': 'na'},
    {'character': 'ニ', 'answer': 'ni'},
    {'character': 'ヌ', 'answer': 'nu'},
    {'character': 'ネ', 'answer': 'ne'},
    {'character': 'ノ', 'answer': 'no'},
    {'character': 'ハ', 'answer': 'ha'},
    {'character': 'ヒ', 'answer': 'hi'},
    {'character': 'フ', 'answer': 'fu'},
    {'character': 'ヘ', 'answer': 'he'},
    {'character': 'ホ', 'answer': 'ho'},
    {'character': 'マ', 'answer': 'ma'},
    {'character': 'ミ', 'answer': 'mi'},
    {'character': 'ム', 'answer': 'mu'},
    {'character': 'メ', 'answer': 'me'},
    {'character': 'モ', 'answer': 'mo'},
    {'character': 'ヤ', 'answer': 'ya'},
    {'character': 'ユ', 'answer': 'yu'},
    {'character': 'ヨ', 'answer': 'yo'},
    {'character': 'ラ', 'answer': 'ra'},
    {'character': 'リ', 'answer': 'ri'},
    {'character': 'ル', 'answer': 'ru'},
    {'character': 'レ', 'answer': 're'},
    {'character': 'ロ', 'answer': 'ro'},
    {'character': 'ワ', 'answer': 'wa'},
    {'character': 'ヲ', 'answer': 'wo'},
    {'character': 'ン', 'answer': 'n'},
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
          'K a t a k a n a',
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
                          showAnswer
                              ? card['answer']!
                              : card['character']!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: showAnswer ? 58 : 110,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 25),

                        Text(
                          showAnswer
                              ? 'ROMAJI'
                              : 'TAP TO REVEAL ANSWER',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            letterSpacing: 2,
                          ),
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
                  child: _katakanaFlashcardButton(
                    icon: Icons.arrow_back,
                    label: 'Previous',
                    onTap: previousCard,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: _katakanaFlashcardButton(
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
              child: _katakanaFlashcardButton(
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

Widget _katakanaFlashcardButton({
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
