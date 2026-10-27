import 'dart:math';
import 'package:flutter/material.dart';

class HiraganaFlashcardsScreen extends StatefulWidget {
  const HiraganaFlashcardsScreen({super.key});

  @override
  State<HiraganaFlashcardsScreen> createState() =>
      _HiraganaFlashcardsScreenState();
}

class _HiraganaFlashcardsScreenState
    extends State<HiraganaFlashcardsScreen> {
  final List<Map<String, String>> cards = [
    {'character': 'あ', 'answer': 'a'},
    {'character': 'い', 'answer': 'i'},
    {'character': 'う', 'answer': 'u'},
    {'character': 'え', 'answer': 'e'},
    {'character': 'お', 'answer': 'o'},
    {'character': 'か', 'answer': 'ka'},
    {'character': 'き', 'answer': 'ki'},
    {'character': 'く', 'answer': 'ku'},
    {'character': 'け', 'answer': 'ke'},
    {'character': 'こ', 'answer': 'ko'},
    {'character': 'さ', 'answer': 'sa'},
    {'character': 'し', 'answer': 'shi'},
    {'character': 'す', 'answer': 'su'},
    {'character': 'せ', 'answer': 'se'},
    {'character': 'そ', 'answer': 'so'},
    {'character': 'た', 'answer': 'ta'},
    {'character': 'ち', 'answer': 'chi'},
    {'character': 'つ', 'answer': 'tsu'},
    {'character': 'て', 'answer': 'te'},
    {'character': 'と', 'answer': 'to'},
    {'character': 'な', 'answer': 'na'},
    {'character': 'に', 'answer': 'ni'},
    {'character': 'ぬ', 'answer': 'nu'},
    {'character': 'ね', 'answer': 'ne'},
    {'character': 'の', 'answer': 'no'},
    {'character': 'は', 'answer': 'ha'},
    {'character': 'ひ', 'answer': 'hi'},
    {'character': 'ふ', 'answer': 'fu'},
    {'character': 'へ', 'answer': 'he'},
    {'character': 'ほ', 'answer': 'ho'},
    {'character': 'ま', 'answer': 'ma'},
    {'character': 'み', 'answer': 'mi'},
    {'character': 'む', 'answer': 'mu'},
    {'character': 'め', 'answer': 'me'},
    {'character': 'も', 'answer': 'mo'},
    {'character': 'や', 'answer': 'ya'},
    {'character': 'ゆ', 'answer': 'yu'},
    {'character': 'よ', 'answer': 'yo'},
    {'character': 'ら', 'answer': 'ra'},
    {'character': 'り', 'answer': 'ri'},
    {'character': 'る', 'answer': 'ru'},
    {'character': 'れ', 'answer': 're'},
    {'character': 'ろ', 'answer': 'ro'},
    {'character': 'わ', 'answer': 'wa'},
    {'character': 'を', 'answer': 'wo'},
    {'character': 'ん', 'answer': 'n'},
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
          'H i r a g a n a',
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
                  child: _flashcardButton(
                    icon: Icons.arrow_back,
                    label: 'Previous',
                    onTap: previousCard,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _flashcardButton(
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
              child: _flashcardButton(
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

Widget _flashcardButton({
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
