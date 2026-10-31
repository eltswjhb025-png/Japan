import 'dart:math';
import 'package:flutter/material.dart';

class ColoursScreen extends StatefulWidget {
  const ColoursScreen({super.key});

  @override
  State<ColoursScreen> createState() => _ColoursScreenState();
}

class _ColoursScreenState extends State<ColoursScreen> {
  final List<Map<String, String>> cards = [
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

  int currentIndex = 0;
  bool showAnswer = false;

  // FLIP CARD
  void flipCard() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  // NEXT CARD
  void nextCard() {
    setState(() {
      currentIndex = (currentIndex + 1) % cards.length;
      showAnswer = false;
    });
  }

  // PREVIOUS CARD
  void previousCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + cards.length) % cards.length;
      showAnswer = false;
    });
  }

  // SHUFFLE CARDS
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            // CARD COUNTER
            Text(
              'Card ${currentIndex + 1} of ${cards.length}',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            // FLASHCARD
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
                      color: Colors.white.withValues(
                        alpha: 0.12,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white.withValues(
                          alpha: 0.45,
                        ),
                        width: 1.5,
                      ),
                    ),

                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        // CARD ICON
                        Icon(
                          showAnswer
                              ? Icons.check_circle_outline
                              : Icons.touch_app,
                          color: Colors.white70,
                          size: 30,
                        ),

                        const SizedBox(height: 20),

                        // ENGLISH WORD OR HIRAGANA
                        Text(
                          showAnswer
                              ? card['hiragana']!
                              : card['word']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: showAnswer ? 65 : 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ROMAJI
                        if (showAnswer)
                          Text(
                            card['romaji']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                        const SizedBox(height: 25),

                        // CARD INSTRUCTION
                        Text(
                          showAnswer
                              ? 'HIRAGANA • ROMAJI'
                              : 'TAP TO REVEAL ANSWER',
                          textAlign: TextAlign.center,
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

            // PREVIOUS AND NEXT BUTTONS
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

            // SHUFFLE BUTTON
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

// FLASHCARD BUTTON
Widget _flashcardButton({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
}) {
  return Material(
    color: Colors.white.withValues(alpha: 0.10),
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
            color: Colors.white.withValues(alpha: 0.35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 19,
            ),

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