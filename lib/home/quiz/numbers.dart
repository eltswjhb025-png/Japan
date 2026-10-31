import 'dart:math';
import 'package:flutter/material.dart';

class NumbersScreen extends StatefulWidget {
  const NumbersScreen({super.key});

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {

  // NUMBERS VOCABULARY
  final List<Map<String, String>> cards = [
    // BASIC NUMBERS
    {'word': 'Zero', 'hiragana': 'ぜろ', 'romaji': 'Zero'},
    {'word': 'One', 'hiragana': 'いち', 'romaji': 'Ichi'},
    {'word': 'Two', 'hiragana': 'に', 'romaji': 'Ni'},
    {'word': 'Three', 'hiragana': 'さん', 'romaji': 'San'},
    {'word': 'Four', 'hiragana': 'よん', 'romaji': 'Yon'},
    {'word': 'Five', 'hiragana': 'ご', 'romaji': 'Go'},
    {'word': 'Six', 'hiragana': 'ろく', 'romaji': 'Roku'},
    {'word': 'Seven', 'hiragana': 'なな', 'romaji': 'Nana'},
    {'word': 'Eight', 'hiragana': 'はち', 'romaji': 'Hachi'},
    {'word': 'Nine', 'hiragana': 'きゅう', 'romaji': 'Kyuu'},
    {'word': 'Ten', 'hiragana': 'じゅう', 'romaji': 'Juu'},

    // ELEVEN TO TWENTY
    {'word': 'Eleven', 'hiragana': 'じゅういち', 'romaji': 'Juuichi'},
    {'word': 'Twelve', 'hiragana': 'じゅうに', 'romaji': 'Juuni'},
    {'word': 'Thirteen', 'hiragana': 'じゅうさん', 'romaji': 'Juusan'},
    {'word': 'Fourteen', 'hiragana': 'じゅうよん', 'romaji': 'Juuyon'},
    {'word': 'Fifteen', 'hiragana': 'じゅうご', 'romaji': 'Juugo'},
    {'word': 'Sixteen', 'hiragana': 'じゅうろく', 'romaji': 'Juuroku'},
    {'word': 'Seventeen', 'hiragana': 'じゅうなな', 'romaji': 'Juunana'},
    {'word': 'Eighteen', 'hiragana': 'じゅうはち', 'romaji': 'Juuhachi'},
    {'word': 'Nineteen', 'hiragana': 'じゅうきゅう', 'romaji': 'Juukyuu'},
    {'word': 'Twenty', 'hiragana': 'にじゅう', 'romaji': 'Nijuu'},

    // TWENTY-ONE TO TWENTY-NINE
    {'word': 'Twenty-one', 'hiragana': 'にじゅういち', 'romaji': 'Nijuuichi'},
    {'word': 'Twenty-two', 'hiragana': 'にじゅうに', 'romaji': 'Nijuuni'},
    {'word': 'Twenty-three', 'hiragana': 'にじゅうさん', 'romaji': 'Nijuusan'},
    {'word': 'Twenty-four', 'hiragana': 'にじゅうよん', 'romaji': 'Nijuuyon'},
    {'word': 'Twenty-five', 'hiragana': 'にじゅうご', 'romaji': 'Nijuugo'},
    {'word': 'Twenty-six', 'hiragana': 'にじゅうろく', 'romaji': 'Nijuuroku'},
    {'word': 'Twenty-seven', 'hiragana': 'にじゅうなな', 'romaji': 'Nijuunana'},
    {'word': 'Twenty-eight', 'hiragana': 'にじゅうはち', 'romaji': 'Nijuuhachi'},
    {'word': 'Twenty-nine', 'hiragana': 'にじゅうきゅう', 'romaji': 'Nijuukyuu'},

    // TENS
    {'word': 'Thirty', 'hiragana': 'さんじゅう', 'romaji': 'Sanjuu'},
    {'word': 'Forty', 'hiragana': 'よんじゅう', 'romaji': 'Yonjuu'},
    {'word': 'Fifty', 'hiragana': 'ごじゅう', 'romaji': 'Gojuu'},
    {'word': 'Sixty', 'hiragana': 'ろくじゅう', 'romaji': 'Rokujuu'},
    {'word': 'Seventy', 'hiragana': 'ななじゅう', 'romaji': 'Nanajuu'},
    {'word': 'Eighty', 'hiragana': 'はちじゅう', 'romaji': 'Hachijuu'},
    {'word': 'Ninety', 'hiragana': 'きゅうじゅう', 'romaji': 'Kyuujuu'},

    // LARGE NUMBERS
    {'word': 'One hundred', 'hiragana': 'ひゃく', 'romaji': 'Hyaku'},
    {'word': 'One thousand', 'hiragana': 'せん', 'romaji': 'Sen'},
    {'word': 'Hundred thousand', 'hiragana': 'じゅうまん', 'romaji': 'Juuman'},
    {'word': 'One million', 'hiragana': 'ひゃくまん', 'romaji': 'Hyakuman'},

    // ORDINAL NUMBERS
    {'word': 'First', 'hiragana': 'いちばんめ', 'romaji': 'Ichibanme'},
    {'word': 'Second', 'hiragana': 'にばんめ', 'romaji': 'Nibanme'},
    {'word': 'Third', 'hiragana': 'さんばんめ', 'romaji': 'Sanbanme'},
    {'word': 'Fourth', 'hiragana': 'よんばんめ', 'romaji': 'Yonbanme'},
    {'word': 'Fifth', 'hiragana': 'ごばんめ', 'romaji': 'Gobanme'},
    {'word': 'Sixth', 'hiragana': 'ろくばんめ', 'romaji': 'Rokubanme'},
    {'word': 'Seventh', 'hiragana': 'ななばんめ', 'romaji': 'Nanabanme'},
    {'word': 'Eighth', 'hiragana': 'はちばんめ', 'romaji': 'Hachibanme'},
    {'word': 'Ninth', 'hiragana': 'きゅうばんめ', 'romaji': 'Kyuubanme'},
    {'word': 'Tenth', 'hiragana': 'じゅうばんめ', 'romaji': 'Juubanme'},
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
          'N u m b e r s',
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

                    child: Padding(
                      padding: const EdgeInsets.all(20),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // FRONT OF CARD
                          if (!showAnswer) ...[

                            const Icon(
                              Icons.touch_app,
                              color: Colors.white,
                              size: 45,
                            ),

                            const SizedBox(height: 25),

                            Text(
                              card['word']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 30),

                            const Text(
                              'TAP TO REVEAL ANSWER',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]

                          // BACK OF CARD
                          else ...[

                            const Icon(
                              Icons.check_circle_outline,
                              color: Colors.white,
                              size: 40,
                            ),

                            const SizedBox(height: 25),

                            Text(
                              card['hiragana']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 15),

                            Text(
                              card['romaji']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            const SizedBox(height: 30),

                            const Text(
                              'JAPANESE & ROMAJI',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ],
                      ),
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

                const SizedBox(width: 12),

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
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.15),
      borderRadius: BorderRadius.circular(14),

      border: Border.all(
        color: Colors.white.withValues(alpha: 0.4),
        width: 1,
      ),
    ),

    child: Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(14),

      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),

        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),

              const SizedBox(width: 8),

              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}