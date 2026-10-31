import 'dart:math';
import 'package:flutter/material.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({super.key});

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {

  // COUNTRIES
  final List<Map<String, String>> cards = [
    {'country': 'Japan', 'japanese': 'にほん', 'romaji': 'Nihon'},
    {'country': 'Taiwan', 'japanese': 'たいわん', 'romaji': 'Taiwan'},
    {'country': 'Hong Kong', 'japanese': 'ほんこん', 'romaji': 'Honkon'},
    {'country': 'North Korea', 'japanese': 'きたちょうせん', 'romaji': 'Kita Chousen'},
    {'country': 'South Korea', 'japanese': 'かんこく', 'romaji': 'Kankoku'},
    {'country': 'China', 'japanese': 'ちゅうごく', 'romaji': 'Chuugoku'},
    {'country': 'Vietnam', 'japanese': 'べとなむ', 'romaji': 'Betonamu'},
    {'country': 'Thailand', 'japanese': 'たいらんど', 'romaji': 'Tairando'},
    {'country': 'Malaysia', 'japanese': 'まれーしあ', 'romaji': 'Mareeshia'},
    {'country': 'Singapore', 'japanese': 'しんがぽーる', 'romaji': 'Shingapooru'},
    {'country': 'Philippines', 'japanese': 'ふぃりぴん', 'romaji': 'Firipin'},
    {'country': 'Indonesia', 'japanese': 'いんどねしあ', 'romaji': 'Indoneshia'},
    {'country': 'Pakistan', 'japanese': 'ぱきすたん', 'romaji': 'Pakisutan'},
    {'country': 'Nepal', 'japanese': 'ねぱーる', 'romaji': 'Nepaaru'},
    {'country': 'Russia', 'japanese': 'ろしあ', 'romaji': 'Roshia'},
    {'country': 'USA', 'japanese': 'あめりか', 'romaji': 'Amerika'},
    {'country': 'Canada', 'japanese': 'かなだ', 'romaji': 'Kanada'},
    {'country': 'Mexico', 'japanese': 'めきしこ', 'romaji': 'Mekishiko'},
    {'country': 'England', 'japanese': 'いんぐらんど', 'romaji': 'Ingurando'},
    {'country': 'Scotland', 'japanese': 'すこっとらんど', 'romaji': 'Sukottorando'},
    {'country': 'Wales', 'japanese': 'うぇーるず', 'romaji': 'Weeruzu'},
    {'country': 'France', 'japanese': 'ふらんす', 'romaji': 'Furansu'},
    {'country': 'Italy', 'japanese': 'いたりあ', 'romaji': 'Itaria'},
    {'country': 'Germany', 'japanese': 'どいつ', 'romaji': 'Doitsu'},
    {'country': 'Sweden', 'japanese': 'すうぇーでん', 'romaji': 'Suweeden'},
    {'country': 'Finland', 'japanese': 'ふぃんらんど', 'romaji': 'Finrando'},
    {'country': 'Norway', 'japanese': 'のるうぇー', 'romaji': 'Noruwee'},
    {'country': 'Denmark', 'japanese': 'でんまーく', 'romaji': 'Denmaaku'},
    {'country': 'Netherlands', 'japanese': 'おらんだ', 'romaji': 'Oranda'},
    {'country': 'Portugal', 'japanese': 'ぽるとがる', 'romaji': 'Porutogaru'},
    {'country': 'Australia', 'japanese': 'おーすとらりあ', 'romaji': 'Oosutoraria'},
    {'country': 'New Zealand', 'japanese': 'にゅーじーらんど', 'romaji': 'Nyuu Jiirando'},
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
      currentIndex = (currentIndex - 1 + cards.length) % cards.length;
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
          'C o u n t r i e s',
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
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
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
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.45),
                        width: 1.5,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        // CARD ICON
                        Icon(
                          showAnswer
                              ? Icons.check_circle_outline
                              : Icons.touch_app,
                          color: Colors.white,
                          size: 35,
                        ),

                        const SizedBox(height: 20),

                        // COUNTRY / JAPANESE
                        Text(
                          showAnswer
                              ? card['japanese']!
                              : card['country']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: showAnswer ? 48 : 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 15),

                        // ROMAJI
                        if (showAnswer)
                          Text(
                            card['romaji']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                        const SizedBox(height: 25),

                        // INSTRUCTION
                        Text(
                          showAnswer
                              ? 'JAPANESE & ROMAJI'
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