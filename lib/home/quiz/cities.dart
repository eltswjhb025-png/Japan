import 'dart:math';
import 'package:flutter/material.dart';

class CitiesScreen extends StatefulWidget {
  const CitiesScreen({super.key});

  @override
  State<CitiesScreen> createState() => _CitiesScreenState();
}

class _CitiesScreenState extends State<CitiesScreen> {
  final List<Map<String, String>> cards = [
    {'city': 'Tokyo', 'japanese': 'とうきょう', 'romaji': 'Toukyou'},
    {'city': 'Osaka', 'japanese': 'おおさか', 'romaji': 'Oosaka'},
    {'city': 'Kyoto', 'japanese': 'きょうと', 'romaji': 'Kyouto'},
    {'city': 'Yokohama', 'japanese': 'よこはま', 'romaji': 'Yokohama'},
    {'city': 'Nagoya', 'japanese': 'なごや', 'romaji': 'Nagoya'},
    {'city': 'Sapporo', 'japanese': 'さっぽろ', 'romaji': 'Sapporo'},
    {'city': 'Fukuoka', 'japanese': 'ふくおか', 'romaji': 'Fukuoka'},
    {'city': 'Kobe', 'japanese': 'こうべ', 'romaji': 'Koube'},
    {'city': 'Hiroshima', 'japanese': 'ひろしま', 'romaji': 'Hiroshima'},
    {'city': 'Sendai', 'japanese': 'せんだい', 'romaji': 'Sendai'},
    {'city': 'Nara', 'japanese': 'なら', 'romaji': 'Nara'},
    {'city': 'Nagasaki', 'japanese': 'ながさき', 'romaji': 'Nagasaki'},
    {'city': 'Kumamoto', 'japanese': 'くまもと', 'romaji': 'Kumamoto'},
    {'city': 'Kanazawa', 'japanese': 'かなざわ', 'romaji': 'Kanazawa'},
    {'city': 'Nikko', 'japanese': 'にっこう', 'romaji': 'Nikkou'},
    {'city': 'Kawasaki', 'japanese': 'かわさき', 'romaji': 'Kawasaki'},
    {'city': 'Saitama', 'japanese': 'さいたま', 'romaji': 'Saitama'},
    {'city': 'Chiba', 'japanese': 'ちば', 'romaji': 'Chiba'},
    {'city': 'Hamamatsu', 'japanese': 'はままつ', 'romaji': 'Hamamatsu'},
    {'city': 'Shizuoka', 'japanese': 'しずおか', 'romaji': 'Shizuoka'},
    {'city': 'Niigata', 'japanese': 'にいがた', 'romaji': 'Niigata'},
    {'city': 'Okayama', 'japanese': 'おかやま', 'romaji': 'Okayama'},
    {'city': 'Matsuyama', 'japanese': 'まつやま', 'romaji': 'Matsuyama'},
    {'city': 'Takamatsu', 'japanese': 'たかまつ', 'romaji': 'Takamatsu'},
    {'city': 'Kagoshima', 'japanese': 'かごしま', 'romaji': 'Kagoshima'},
    {'city': 'Okinawa', 'japanese': 'おきなわ', 'romaji': 'Okinawa'},
    {'city': 'Mito', 'japanese': 'みと', 'romaji': 'Mito'},
    {'city': 'Fukushima', 'japanese': 'ふくしま', 'romaji': 'Fukushima'},
    {'city': 'Aomori', 'japanese': 'あおもり', 'romaji': 'Aomori'},
    {'city': 'Akita', 'japanese': 'あきた', 'romaji': 'Akita'},
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
          'C i t i e s',
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
                        Icon(
                          showAnswer
                              ? Icons.check_circle_outline
                              : Icons.touch_app,
                          color: Colors.white70,
                          size: 30,
                        ),

                        const SizedBox(height: 20),

                        // CITY NAME OR JAPANESE
                        Text(
                          showAnswer
                              ? card['japanese']!
                              : card['city']!,
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
                              ? 'JAPANESE • ROMAJI'
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