import 'dart:math';
import 'package:flutter/material.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  // FOOD VOCABULARY
  final List<Map<String, String>> foods = [
    // BASIC FOOD
    {'word': 'Food', 'hiragana': 'たべもの', 'romaji': 'Tabemono'},
    {'word': 'Rice', 'hiragana': 'ごはん', 'romaji': 'Gohan'},
    {'word': 'Bread', 'hiragana': 'ぱん', 'romaji': 'Pan'},
    {'word': 'Noodles', 'hiragana': 'めん', 'romaji': 'Men'},
    {'word': 'Egg', 'hiragana': 'たまご', 'romaji': 'Tamago'},

    // MEAT AND SEAFOOD
    {'word': 'Meat', 'hiragana': 'にく', 'romaji': 'Niku'},
    {'word': 'Chicken', 'hiragana': 'とりにく', 'romaji': 'Toriniku'},
    {'word': 'Beef', 'hiragana': 'ぎゅうにく', 'romaji': 'Gyuuniku'},
    {'word': 'Pork', 'hiragana': 'ぶたにく', 'romaji': 'Butaniku'},
    {'word': 'Fish', 'hiragana': 'さかな', 'romaji': 'Sakana'},
    {'word': 'Seafood', 'hiragana': 'かいせん', 'romaji': 'Kaisen'},
    {'word': 'Shrimp', 'hiragana': 'えび', 'romaji': 'Ebi'},
    {'word': 'Crab', 'hiragana': 'かに', 'romaji': 'Kani'},
    {'word': 'Squid', 'hiragana': 'いか', 'romaji': 'Ika'},
    {'word': 'Octopus', 'hiragana': 'たこ', 'romaji': 'Tako'},

    // VEGETABLES
    {'word': 'Vegetables', 'hiragana': 'やさい', 'romaji': 'Yasai'},
    {'word': 'Potato', 'hiragana': 'じゃがいも', 'romaji': 'Jagaimo'},
    {'word': 'Carrot', 'hiragana': 'にんじん', 'romaji': 'Ninjin'},
    {'word': 'Onion', 'hiragana': 'たまねぎ', 'romaji': 'Tamanegi'},
    {'word': 'Tomato', 'hiragana': 'とまと', 'romaji': 'Tomato'},
    {'word': 'Cucumber', 'hiragana': 'きゅうり', 'romaji': 'Kyuuri'},
    {'word': 'Cabbage', 'hiragana': 'きゃべつ', 'romaji': 'Kyabetsu'},
    {'word': 'Mushroom', 'hiragana': 'きのこ', 'romaji': 'Kinoko'},
    {'word': 'Lettuce', 'hiragana': 'れたす', 'romaji': 'Retasu'},

    // FRUIT
    {'word': 'Fruit', 'hiragana': 'くだもの', 'romaji': 'Kudamono'},
    {'word': 'Apple', 'hiragana': 'りんご', 'romaji': 'Ringo'},
    {'word': 'Banana', 'hiragana': 'ばなな', 'romaji': 'Banana'},
    {'word': 'Orange', 'hiragana': 'おれんじ', 'romaji': 'Orenji'},
    {'word': 'Strawberry', 'hiragana': 'いちご', 'romaji': 'Ichigo'},
    {'word': 'Grapes', 'hiragana': 'ぶどう', 'romaji': 'Budou'},
    {'word': 'Watermelon', 'hiragana': 'すいか', 'romaji': 'Suika'},
    {'word': 'Peach', 'hiragana': 'もも', 'romaji': 'Momo'},
    {'word': 'Pineapple', 'hiragana': 'ぱいなっぷる', 'romaji': 'Painappuru'},

    // DAIRY AND OTHER FOODS
    {'word': 'Cheese', 'hiragana': 'ちーず', 'romaji': 'Chiizu'},
    {'word': 'Butter', 'hiragana': 'ばたー', 'romaji': 'Bataa'},
    {'word': 'Milk', 'hiragana': 'ぎゅうにゅう', 'romaji': 'Gyuunyuu'},
    {'word': 'Yoghurt', 'hiragana': 'よーぐると', 'romaji': 'Yooguruto'},
    {'word': 'Tofu', 'hiragana': 'とうふ', 'romaji': 'Toufu'},
    {'word': 'Soup', 'hiragana': 'すーぷ', 'romaji': 'Suupu'},
    {'word': 'Salad', 'hiragana': 'さらだ', 'romaji': 'Sarada'},

    // FAST FOOD
    {'word': 'Sandwich', 'hiragana': 'さんどいっち', 'romaji': 'Sandoicchi'},
    {'word': 'Pizza', 'hiragana': 'ぴざ', 'romaji': 'Piza'},
    {'word': 'Hamburger', 'hiragana': 'はんばーがー', 'romaji': 'Hanbaagaa'},
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
      currentIndex = (currentIndex + 1) % foods.length;
      showAnswer = false;
    });
  }

  // PREVIOUS CARD
  void previousCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + foods.length) % foods.length;
      showAnswer = false;
    });
  }

  // SHUFFLE CARDS
  void shuffleCards() {
    setState(() {
      foods.shuffle(Random());
      currentIndex = 0;
      showAnswer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final card = foods[currentIndex];

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
          'F o o d',
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
              'Card ${currentIndex + 1} of ${foods.length}',
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

                    padding: const EdgeInsets.all(24),

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
                        // ENGLISH WORD
                        Text(
                          card['word']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 25),

                        // JAPANESE ANSWER
                        if (showAnswer) ...[
                          Text(
                            card['hiragana']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 12),

                          Text(
                            card['romaji']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(height: 20),

                          const Icon(
                            Icons.check_circle_outline,
                            color: Colors.white,
                            size: 30,
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'JAPANESE & ROMAJI',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              letterSpacing: 2,
                            ),
                          ),
                        ] else ...[
                          const Icon(
                            Icons.touch_app,
                            color: Colors.white,
                            size: 35,
                          ),

                          const SizedBox(height: 12),

                          const Text(
                            'TAP TO REVEAL ANSWER',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
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
            _flashcardButton(
              icon: Icons.shuffle,
              label: 'Shuffle Cards',
              onTap: shuffleCards,
              fullWidth: true,
            ),
          ],
        ),
      ),
    );
  }

  // FLASHCARD BUTTON
  Widget _flashcardButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    bool fullWidth = false,
  }) {
    return Container(
      width: fullWidth ? double.infinity : null,

      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.20),
        borderRadius: BorderRadius.circular(14),

        border: Border.all(
          color: Colors.white.withValues(alpha: 0.40),
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
              vertical: 14,
              horizontal: 16,
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
                    fontSize: 15,
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
}