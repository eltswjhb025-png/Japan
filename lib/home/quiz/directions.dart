import 'dart:math';
import 'package:flutter/material.dart';

class DirectionsScreen extends StatefulWidget {
  const DirectionsScreen({super.key});

  @override
  State<DirectionsScreen> createState() => _DirectionsScreenState();
}

class _DirectionsScreenState extends State<DirectionsScreen> {

  // DIRECTIONS AND PLACES VOCABULARY
  final List<Map<String, String>> cards = [

    // DIRECTIONS
    {'word': 'Where is...?', 'hiragana': '…はどこですか？', 'romaji': '... wa doko desu ka?'},
    {'word': 'How far is it?', 'hiragana': 'どのくらいとおいですか？', 'romaji': 'Dono kurai tooi desu ka?'},
    {'word': 'How do I get there?', 'hiragana': 'どうやってそこへいきますか？', 'romaji': 'Dou yatte soko e ikimasu ka?'},
    {'word': 'Can you show me where it is on the map?', 'hiragana': 'ちずでどこにあるかみせてもらえますか？', 'romaji': 'Chizu de doko ni aru ka misete moraemasu ka?'},

    // COMPASS DIRECTIONS
    {'word': 'North', 'hiragana': 'きた', 'romaji': 'Kita'},
    {'word': 'South', 'hiragana': 'みなみ', 'romaji': 'Minami'},
    {'word': 'East', 'hiragana': 'ひがし', 'romaji': 'Higashi'},
    {'word': 'West', 'hiragana': 'にし', 'romaji': 'Nishi'},

    // MOVEMENT
    {'word': 'Cross the street', 'hiragana': 'みちをわたる', 'romaji': 'Michi o wataru'},
    {'word': 'Turn left', 'hiragana': 'ひだりにまがる', 'romaji': 'Hidari ni magaru'},
    {'word': 'Turn right', 'hiragana': 'みぎにまがる', 'romaji': 'Migi ni magaru'},
    {'word': 'Up', 'hiragana': 'うえ', 'romaji': 'Ue'},
    {'word': 'Down', 'hiragana': 'した', 'romaji': 'Shita'},
    {'word': 'Go straight', 'hiragana': 'まっすぐいく', 'romaji': 'Massugu iku'},
    {'word': 'Left', 'hiragana': 'ひだり', 'romaji': 'Hidari'},
    {'word': 'Right', 'hiragana': 'みぎ', 'romaji': 'Migi'},

    // POSITIONS
    {'word': 'In front of', 'hiragana': 'まえ', 'romaji': 'Mae'},
    {'word': 'Behind', 'hiragana': 'うしろ', 'romaji': 'Ushiro'},
    {'word': 'Under', 'hiragana': 'した', 'romaji': 'Shita'},
    {'word': 'On top', 'hiragana': 'うえ', 'romaji': 'Ue'},
    {'word': 'Opposite', 'hiragana': 'むかい', 'romaji': 'Mukai'},
    {'word': 'Near', 'hiragana': 'ちかく', 'romaji': 'Chikaku'},
    {'word': 'On the corner', 'hiragana': 'かどに', 'romaji': 'Kado ni'},

    // LOCATIONS
    {'word': "It's straight ahead.", 'hiragana': 'まっすぐです。', 'romaji': 'Massugu desu.'},
    {'word': 'Here', 'hiragana': 'ここ', 'romaji': 'Koko'},
    {'word': 'There', 'hiragana': 'そこ', 'romaji': 'Soko'},

    // PLACES
    {'word': 'Traffic lights', 'hiragana': 'しんごう', 'romaji': 'Shingou'},
    {'word': 'Intersection', 'hiragana': 'こうさてん', 'romaji': 'Kousaten'},
    {'word': 'Airport', 'hiragana': 'くうこう', 'romaji': 'Kuukou'},
    {'word': 'Bus stop', 'hiragana': 'ばすてい', 'romaji': 'Basutei'},
    {'word': 'Train station', 'hiragana': 'えき', 'romaji': 'Eki'},
    {'word': 'Tourist information', 'hiragana': 'かんこうあんないじょ', 'romaji': 'Kankou annaijo'},
    {'word': 'Department store', 'hiragana': 'ひゃっかてん', 'romaji': 'Hyakkaten'},
    {'word': 'Bank', 'hiragana': 'ぎんこう', 'romaji': 'Ginkou'},
    {'word': 'ATM', 'hiragana': 'えーてぃーえむ', 'romaji': 'Eeti emu'},
    {'word': 'Hotel', 'hiragana': 'ほてる', 'romaji': 'Hoteru'},
    {'word': 'Internet cafe', 'hiragana': 'いんたーねっとかふぇ', 'romaji': 'Intaanetto kafe'},
    {'word': 'Market', 'hiragana': 'いちば', 'romaji': 'Ichiba'},
    {'word': 'Police station', 'hiragana': 'けいさつしょ', 'romaji': 'Keisatsusho'},
    {'word': 'Supermarket', 'hiragana': 'すーぱー', 'romaji': 'Suupaa'},
    {'word': 'Post office', 'hiragana': 'ゆうびんきょく', 'romaji': 'Yuubinkyoku'},
    {'word': 'Cinema', 'hiragana': 'えいがかん', 'romaji': 'Eigakan'},
    {'word': 'Chemist/Pharmacy', 'hiragana': 'くすりや', 'romaji': 'Kusuriya'},
    {'word': 'School', 'hiragana': 'がっこう', 'romaji': 'Gakkou'},
    {'word': 'House', 'hiragana': 'いえ', 'romaji': 'Ie'},

    // TRANSPORT AND LANDMARKS
    {'word': '5-minute walk', 'hiragana': 'ごふんあるいて', 'romaji': 'Gofun aruite'},
    {'word': 'Go by taxi', 'hiragana': 'たくしーでいく', 'romaji': 'Takushii de iku'},
    {'word': 'Overhead walkway', 'hiragana': 'ほどうきょう', 'romaji': 'Hodoukyou'},
    {'word': 'Zebra crossing', 'hiragana': 'おうだんほどう', 'romaji': 'Oudan hodou'},
    {'word': 'Bridge', 'hiragana': 'はし', 'romaji': 'Hashi'},
    {'word': 'Road', 'hiragana': 'みち', 'romaji': 'Michi'},
    {'word': 'Tunnel', 'hiragana': 'とんねる', 'romaji': 'Tonneru'},
    {'word': 'Park', 'hiragana': 'こうえん', 'romaji': 'Kouen'},
    {'word': 'Toilet/Bathroom', 'hiragana': 'おてあらい', 'romaji': 'Otearai'},
    {'word': 'Where is the toilet?', 'hiragana': 'おてあらいはどこですか？', 'romaji': 'Otearai wa doko desu ka?'},
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
          'D i r e c t i o n s  &  P l a c e s',
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

                        // ENGLISH / HIRAGANA
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Text(
                            showAnswer
                                ? card['hiragana']!
                                : card['word']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: showAnswer ? 36 : 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // ROMAJI
                        if (showAnswer)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: Text(
                              card['romaji']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
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