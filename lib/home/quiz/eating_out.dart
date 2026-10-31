import 'dart:math';
import 'package:flutter/material.dart';

class EatingOutScreen extends StatefulWidget {
  const EatingOutScreen({super.key});

  @override
  State<EatingOutScreen> createState() => _EatingOutScreenState();
}

class _EatingOutScreenState extends State<EatingOutScreen> {
  int currentIndex = 0;
  bool showAnswer = false;

  final List<Map<String, String>> cards = [
    // MEALS
    {'word': 'Breakfast', 'hiragana': 'あさごはん', 'romaji': 'Asagohan'},
    {'word': 'Lunch', 'hiragana': 'ひるごはん', 'romaji': 'Hirugohan'},
    {'word': 'Dinner', 'hiragana': 'ばんごはん', 'romaji': 'Bangohan'},
    {'word': 'Snack', 'hiragana': 'おやつ', 'romaji': 'Oyatsu'},

    // MEAT AND SEAFOOD
    {'word': 'Meat', 'hiragana': 'にく', 'romaji': 'Niku'},
    {'word': 'Beef', 'hiragana': 'ぎゅうにく', 'romaji': 'Gyuuniku'},
    {'word': 'Chicken', 'hiragana': 'とりにく', 'romaji': 'Toriniku'},
    {'word': 'Eggs', 'hiragana': 'たまご', 'romaji': 'Tamago'},
    {'word': 'Duck', 'hiragana': 'かもにく', 'romaji': 'Kamoniku'},
    {'word': 'Pork', 'hiragana': 'ぶたにく', 'romaji': 'Butaniku'},
    {'word': 'Lamb', 'hiragana': 'ひつじにく', 'romaji': 'Hitsujiniku'},
    {'word': 'Seafood', 'hiragana': 'かいせん', 'romaji': 'Kaisen'},
    {'word': 'Fish', 'hiragana': 'さかな', 'romaji': 'Sakana'},
    {'word': 'Shrimp/Prawn', 'hiragana': 'えび', 'romaji': 'Ebi'},
    {'word': 'Shellfish', 'hiragana': 'かい', 'romaji': 'Kai'},

    // TABLEWARE
    {'word': 'Rice', 'hiragana': 'ごはん', 'romaji': 'Gohan'},
    {'word': 'Chopsticks', 'hiragana': 'おはし', 'romaji': 'Ohashi'},
    {'word': 'Fork', 'hiragana': 'ふぉーく', 'romaji': 'Fooku'},
    {'word': 'Knife', 'hiragana': 'ないふ', 'romaji': 'Naifu'},
    {'word': 'Spoon', 'hiragana': 'すぷーん', 'romaji': 'Supuun'},
    {'word': 'Glass', 'hiragana': 'こっぷ', 'romaji': 'Koppu'},
    {'word': 'Wine glass', 'hiragana': 'わいんぐらす', 'romaji': 'Waingurasu'},
    {'word': 'Tea cup', 'hiragana': 'ゆのみ', 'romaji': 'Yunomi'},
    {'word': 'Teapot', 'hiragana': 'きゅうす', 'romaji': 'Kyuusu'},
    {'word': 'Rice bowl', 'hiragana': 'ちゃわん', 'romaji': 'Chawan'},
    {'word': 'Soup bowl', 'hiragana': 'おわん', 'romaji': 'Owan'},
    {'word': 'Plate', 'hiragana': 'さら', 'romaji': 'Sara'},
    {'word': 'Napkin', 'hiragana': 'なぷきん', 'romaji': 'Napukin'},

    // FOOD EXPRESSIONS
    {'word': "I'm hungry.", 'hiragana': 'おなかがすきました。', 'romaji': 'Onaka ga sukimashita.'},
    {'word': "I'm full.", 'hiragana': 'おなかがいっぱいです。', 'romaji': 'Onaka ga ippai desu.'},
    {'word': 'Very delicious!', 'hiragana': 'とてもおいしいです！', 'romaji': 'Totemo oishii desu!'},
    {'word': 'I love this dish.', 'hiragana': 'このりょうりがだいすきです。', 'romaji': 'Kono ryouri ga daisuki desu.'},
    {'word': 'What is it called?', 'hiragana': 'これはなんというたべものですか？', 'romaji': 'Kore wa nan to iu tabemono desu ka?'},

    // RESTAURANT PHRASES
    {'word': "I'd like a table for two, please.", 'hiragana': 'ふたりせきでおねがいします。', 'romaji': 'Futari seki de onegaishimasu.'},
    {'word': 'Can I have a menu?', 'hiragana': 'めにゅーをおねがいします。', 'romaji': 'Menyuu o onegaishimasu.'},
    {'word': 'Do you have a menu in English?', 'hiragana': 'えいごのめにゅーはありますか？', 'romaji': 'Eigo no menyuu wa arimasu ka?'},
    {'word': "What's good here?", 'hiragana': 'ここではなにがおすすめですか？', 'romaji': 'Koko de wa nani ga osusume desu ka?'},
    {'word': 'Can I order some food?', 'hiragana': 'たべものをちゅうもんできますか？', 'romaji': 'Tabemono o chuumon dekimasu ka?'},

    // ALLERGIES AND DIETARY REQUIREMENTS
    {'word': "I don't eat meat.", 'hiragana': 'にくはたべません。', 'romaji': 'Niku wa tabemasen.'},
    {'word': "I don't like eggs.", 'hiragana': 'たまごがすきではありません。', 'romaji': 'Tamago ga suki dewa arimasen.'},
    {'word': "I'm allergic to...", 'hiragana': '…のあれるぎーがあります。', 'romaji': '... no arerugii ga arimasu.'},
    {'word': 'Nuts', 'hiragana': 'なっつ', 'romaji': 'Nattsu'},
    {'word': 'Peanuts', 'hiragana': 'らっかせい', 'romaji': 'Rakkasei'},
    {'word': 'Butter', 'hiragana': 'ばたー', 'romaji': 'Bataa'},
    {'word': 'Dairy products', 'hiragana': 'にゅうせいひん', 'romaji': 'Nyuuseihin'},
    {'word': 'Gluten', 'hiragana': 'ぐるてん', 'romaji': 'Guruten'},
    {'word': 'Gelatine', 'hiragana': 'ぜらちん', 'romaji': 'Zerachin'},
    {'word': 'Honey', 'hiragana': 'はちみつ', 'romaji': 'Hachimitsu'},
    {'word': 'Chilli', 'hiragana': 'とうがらし', 'romaji': 'Tougarashi'},
    {'word': 'MSG', 'hiragana': 'うまみちょうみりょう', 'romaji': 'Umami choumiryou'},

    // VEGETARIAN FOOD
    {'word': "I'd like it with...", 'hiragana': '…いりでおねがいします。', 'romaji': '... iri de onegaishimasu.'},
    {'word': "I'd like it without oil.", 'hiragana': 'あぶらなしでおねがいします。', 'romaji': 'Abura nashi de onegaishimasu.'},
    {'word': "I'm a vegetarian.", 'hiragana': 'わたしはべじたりあんです。', 'romaji': 'Watashi wa bejitarian desu.'},
    {'word': 'Do you have vegetarian food?', 'hiragana': 'べじたりあんのたべものはありますか？', 'romaji': 'Bejitarian no tabemono wa arimasu ka?'},
    {'word': 'Vegetables', 'hiragana': 'やさい', 'romaji': 'Yasai'},
    {'word': 'Local cuisine', 'hiragana': 'きょうどりょうり', 'romaji': 'Kyoudo ryouri'},
    {'word': 'Side dishes', 'hiragana': 'おかず', 'romaji': 'Okazu'},
    {'word': 'Kimchi', 'hiragana': 'きむち', 'romaji': 'Kimuchi'},

    // PAYING
    {'word': 'Can I have the bill, please?', 'hiragana': 'おかいけいをおねがいします。', 'romaji': 'Okaikei o onegaishimasu.'},
    {'word': 'Is service charge included?', 'hiragana': 'さーびすりょうはふくまれていますか？', 'romaji': 'Saabisu ryou wa fukumareteimasu ka?'},
    {'word': 'Bill, please!', 'hiragana': 'おかいけいをおねがいします！', 'romaji': 'Okaikei o onegaishimasu!'},
    {'word': 'Take away/Take home', 'hiragana': 'もちかえり', 'romaji': 'Mochikaeri'},

    // EATING AND DRINKING
    {'word': 'To drink', 'hiragana': 'のむ', 'romaji': 'Nomu'},
    {'word': 'To eat', 'hiragana': 'たべる', 'romaji': 'Taberu'},
    {'word': 'Food', 'hiragana': 'たべもの', 'romaji': 'Tabemono'},
    {'word': 'Restaurant', 'hiragana': 'れすとらん', 'romaji': 'Resutoran'},
    {'word': 'Make a reservation (for a table)', 'hiragana': 'せきをよやくする', 'romaji': 'Seki o yoyaku suru'},
    {'word': 'This is delicious.', 'hiragana': 'これはおいしいです。', 'romaji': 'Kore wa oishii desu.'},

    // TASTE AND TEMPERATURE
    {'word': 'Hot (temperature)', 'hiragana': 'あつい', 'romaji': 'Atsui'},
    {'word': 'Cold', 'hiragana': 'つめたい', 'romaji': 'Tsumetai'},
    {'word': 'Delicious', 'hiragana': 'おいしい', 'romaji': 'Oishii'},
    {'word': 'Taste', 'hiragana': 'あじ', 'romaji': 'Aji'},
    {'word': 'Sweet', 'hiragana': 'あまい', 'romaji': 'Amai'},
    {'word': 'Salty', 'hiragana': 'しょっぱい', 'romaji': 'Shoppai'},
    {'word': 'Sour', 'hiragana': 'すっぱい', 'romaji': 'Suppai'},
    {'word': 'Hot (spicy)', 'hiragana': 'からい', 'romaji': 'Karai'},
    {'word': 'Tasteless', 'hiragana': 'あじがない', 'romaji': 'Aji ga nai'},
    {'word': 'Greasy', 'hiragana': 'あぶらっこい', 'romaji': 'Aburakkoi'},

    // SEASONINGS AND FOOD
    {'word': 'Can I have some sugar, please?', 'hiragana': 'さとうをください。', 'romaji': 'Satou o kudasai.'},
    {'word': 'Sugar', 'hiragana': 'さとう', 'romaji': 'Satou'},
    {'word': 'Salt', 'hiragana': 'しお', 'romaji': 'Shio'},
    {'word': 'Pepper', 'hiragana': 'こしょう', 'romaji': 'Koshou'},
    {'word': 'Sauce', 'hiragana': 'そーす', 'romaji': 'Soosu'},
    {'word': 'Soy sauce', 'hiragana': 'しょうゆ', 'romaji': 'Shouyu'},
    {'word': 'Garlic', 'hiragana': 'にんにく', 'romaji': 'Ninniku'},
    {'word': 'Ginger', 'hiragana': 'しょうが', 'romaji': 'Shouga'},
    {'word': 'Chilli', 'hiragana': 'とうがらし', 'romaji': 'Tougarashi'},
    {'word': 'Seaweed', 'hiragana': 'かいそう', 'romaji': 'Kaisou'},
    {'word': 'Sesame seeds', 'hiragana': 'ごま', 'romaji': 'Goma'},
    {'word': 'Soup', 'hiragana': 'すーぷ', 'romaji': 'Suupu'},
    {'word': 'Salads', 'hiragana': 'さらだ', 'romaji': 'Sarada'},
    {'word': 'Noodles', 'hiragana': 'めん', 'romaji': 'Men'},
    {'word': 'Hot pot', 'hiragana': 'なべ', 'romaji': 'Nabe'},
    {'word': 'Desserts', 'hiragana': 'でざーと', 'romaji': 'Dezaato'},

    // DRINKS
    {'word': 'More water, please.', 'hiragana': 'みずをもっとください。', 'romaji': 'Mizu o motto kudasai.'},
    {'word': 'A large bottle of beer, please.', 'hiragana': 'おおきなびんびーるをいっぽんください。', 'romaji': 'Ookina bin biiru o ippon kudasai.'},
    {'word': 'Two small bottles of beer.', 'hiragana': 'ちいさいびーるをにほんください。', 'romaji': 'Chiisai biiru o nihon kudasai.'},
    {'word': 'Beer', 'hiragana': 'びーる', 'romaji': 'Biiru'},
    {'word': 'Coffee', 'hiragana': 'こーひー', 'romaji': 'Koohii'},
    {'word': 'Tea', 'hiragana': 'おちゃ', 'romaji': 'Ocha'},
    {'word': 'Traditional Korean tea', 'hiragana': 'かんこくのでんとうてぃー', 'romaji': 'Kankoku no dentou tii'},
    {'word': 'Green tea', 'hiragana': 'りょくちゃ', 'romaji': 'Ryokucha'},
    {'word': 'Chrysanthemum tea', 'hiragana': 'きくちゃ', 'romaji': 'Kikucha'},
    {'word': 'Jasmine tea', 'hiragana': 'じゃすみんちゃ', 'romaji': 'Jasumincha'},
    {'word': 'Water', 'hiragana': 'みず', 'romaji': 'Mizu'},
    {'word': 'Still mineral water', 'hiragana': 'たんさんなしのミネラルウォーター', 'romaji': 'Tansan nashi no mineraru wootaa'},
    {'word': 'Alcohol drinks', 'hiragana': 'おさけ', 'romaji': 'Osake'},
    {'word': 'Whisky', 'hiragana': 'ういすきー', 'romaji': 'Uisukii'},
    {'word': 'Brandy', 'hiragana': 'ぶらんでー', 'romaji': 'Burandii'},
    {'word': 'Champagne', 'hiragana': 'しゃんぱん', 'romaji': 'Shanpan'},
    {'word': 'Red wine', 'hiragana': 'あかわいん', 'romaji': 'Akawain'},
    {'word': 'White wine', 'hiragana': 'しろわいん', 'romaji': 'Shirowain'},
    {'word': 'Rice wine', 'hiragana': 'にほんしゅ', 'romaji': 'Nihonshu'},
    {'word': 'Cocktail', 'hiragana': 'かくてる', 'romaji': 'Kakuteru'},
    {'word': 'Uyu', 'hiragana': 'うゆ', 'romaji': 'Uyu'},
    {'word': 'Juice', 'hiragana': 'じゅーす', 'romaji': 'Juusu'},
    {'word': 'No ice, please.', 'hiragana': 'こおりなしでおねがいします。', 'romaji': 'Koori nashi de onegaishimasu.'},
    {'word': 'Cheers!', 'hiragana': 'かんぱい！', 'romaji': 'Kanpai!'},
    {'word': 'Bottoms up!', 'hiragana': 'いっきにどうぞ！', 'romaji': 'Ikki ni douzo!'},
    {'word': 'I feel drunk.', 'hiragana': 'よっています。', 'romaji': 'Yotteimasu.'},
    {'word': 'I had too many drinks.', 'hiragana': 'のみすぎました。', 'romaji': 'Nomisugimashita.'},

    // TOILET
    {'word': 'Where is the toilet?', 'hiragana': 'おてあらいはどこですか？', 'romaji': 'Otearai wa doko desu ka?'},
  ];

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
          'E a t i n g  O u t',
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
                        // FRONT: ENGLISH
                        if (!showAnswer) ...[
                          const Icon(
                            Icons.touch_app,
                            color: Colors.white70,
                            size: 35,
                          ),

                          const SizedBox(height: 25),

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
                        ],

                        // BACK: JAPANESE AND ROMAJI
                        if (showAnswer) ...[
                          const Icon(
                            Icons.check_circle_outline,
                            color: Colors.white70,
                            size: 35,
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

                          const SizedBox(height: 25),

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

            const SizedBox(height: 20),

            // PREVIOUS AND NEXT BUTTONS
            Row(
              children: [
                Expanded(
                  child: _flashcardButton(
                    icon: Icons.arrow_back,
                    label: 'Previous',
                    onPressed: previousCard,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _flashcardButton(
                    icon: Icons.arrow_forward,
                    label: 'Next',
                    onPressed: nextCard,
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
                onPressed: shuffleCards,
              ),
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
    required VoidCallback onPressed,
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
          onTap: onPressed,
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 15,
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
                    fontWeight: FontWeight.bold,
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