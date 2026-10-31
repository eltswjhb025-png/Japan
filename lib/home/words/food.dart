import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  // FOOD VOCABULARY
  final List<Map<String, String>> foods = const [
    {'word': 'Food', 'hiragana': 'たべもの', 'romaji': 'Tabemono'},
    {'word': 'Rice', 'hiragana': 'ごはん', 'romaji': 'Gohan'},
    {'word': 'Bread', 'hiragana': 'ぱん', 'romaji': 'Pan'},
    {'word': 'Noodles', 'hiragana': 'めん', 'romaji': 'Men'},
    {'word': 'Egg', 'hiragana': 'たまご', 'romaji': 'Tamago'},
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
    {'word': 'Vegetables', 'hiragana': 'やさい', 'romaji': 'Yasai'},
    {'word': 'Fruit', 'hiragana': 'くだもの', 'romaji': 'Kudamono'},
    {'word': 'Potato', 'hiragana': 'じゃがいも', 'romaji': 'Jagaimo'},
    {'word': 'Carrot', 'hiragana': 'にんじん', 'romaji': 'Ninjin'},
    {'word': 'Onion', 'hiragana': 'たまねぎ', 'romaji': 'Tamanegi'},
    {'word': 'Tomato', 'hiragana': 'とまと', 'romaji': 'Tomato'},
    {'word': 'Cucumber', 'hiragana': 'きゅうり', 'romaji': 'Kyuuri'},
    {'word': 'Cabbage', 'hiragana': 'きゃべつ', 'romaji': 'Kyabetsu'},
    {'word': 'Mushroom', 'hiragana': 'きのこ', 'romaji': 'Kinoko'},
    {'word': 'Lettuce', 'hiragana': 'れたす', 'romaji': 'Retasu'},
    {'word': 'Apple', 'hiragana': 'りんご', 'romaji': 'Ringo'},
    {'word': 'Banana', 'hiragana': 'ばなな', 'romaji': 'Banana'},
    {'word': 'Orange', 'hiragana': 'おれんじ', 'romaji': 'Orenji'},
    {'word': 'Strawberry', 'hiragana': 'いちご', 'romaji': 'Ichigo'},
    {'word': 'Grapes', 'hiragana': 'ぶどう', 'romaji': 'Budou'},
    {'word': 'Watermelon', 'hiragana': 'すいか', 'romaji': 'Suika'},
    {'word': 'Peach', 'hiragana': 'もも', 'romaji': 'Momo'},
    {'word': 'Pineapple', 'hiragana': 'ぱいなっぷる', 'romaji': 'Painappuru'},
    {'word': 'Cheese', 'hiragana': 'ちーず', 'romaji': 'Chiizu'},
    {'word': 'Butter', 'hiragana': 'ばたー', 'romaji': 'Bataa'},
    {'word': 'Milk', 'hiragana': 'ぎゅうにゅう', 'romaji': 'Gyuunyuu'},
    {'word': 'Yoghurt', 'hiragana': 'よーぐると', 'romaji': 'Yooguruto'},
    {'word': 'Tofu', 'hiragana': 'とうふ', 'romaji': 'Toufu'},
    {'word': 'Soup', 'hiragana': 'すーぷ', 'romaji': 'Suupu'},
    {'word': 'Salad', 'hiragana': 'さらだ', 'romaji': 'Sarada'},
    {'word': 'Sandwich', 'hiragana': 'さんどいっち', 'romaji': 'Sandoicchi'},
    {'word': 'Pizza', 'hiragana': 'ぴざ', 'romaji': 'Piza'},
    {'word': 'Hamburger', 'hiragana': 'はんばーがー', 'romaji': 'Hanbaagaa'},
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
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: foods.map((item) {
          return _foodsButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // FOODS BUTTON
  Widget _foodsButton(
      String word,
      String hiragana,
      String romaji,
      ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.30),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.35),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // ENGLISH WORD
                Text(
                  word,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 3),

                // JAPANESE
                Text(
                  hiragana,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 3),

                // ROMAJI
                Text(
                  romaji,
                  textAlign: TextAlign.center,
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
      ),
    );
  }
}