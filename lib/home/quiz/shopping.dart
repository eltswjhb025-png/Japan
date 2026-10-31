import 'dart:math';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {

  // SHOPPING VOCABULARY
  final List<Map<String, String>> cards = [

    // GENERAL SHOPPING
    {'word': 'Shopping', 'hiragana': 'かいもの', 'romaji': 'Kaimono'},
    {'word': 'Shop', 'hiragana': 'みせ', 'romaji': 'Mise'},
    {'word': 'Store', 'hiragana': 'みせ', 'romaji': 'Mise'},
    {'word': 'Shopping mall', 'hiragana': 'しょっぴんぐもーる', 'romaji': 'Shoppingu mooru'},
    {'word': 'Supermarket', 'hiragana': 'すーぱー', 'romaji': 'Suupaa'},
    {'word': 'Convenience store', 'hiragana': 'こんびに', 'romaji': 'Konbini'},
    {'word': 'Department store', 'hiragana': 'でぱーと', 'romaji': 'Depaato'},
    {'word': 'Market', 'hiragana': 'いちば', 'romaji': 'Ichiba'},
    {'word': 'Customer', 'hiragana': 'きゃく', 'romaji': 'Kyaku'},
    {'word': 'Shop assistant', 'hiragana': 'てんいん', 'romaji': 'Tenin'},
    {'word': 'Shopping basket', 'hiragana': 'かご', 'romaji': 'Kago'},
    {'word': 'Shopping cart', 'hiragana': 'かーと', 'romaji': 'Kaato'},
    {'word': 'Shopping bag', 'hiragana': 'ふくろ', 'romaji': 'Fukuro'},
    {'word': 'Receipt', 'hiragana': 'れしーと', 'romaji': 'Reshiito'},
    {'word': 'Discount', 'hiragana': 'わりびき', 'romaji': 'Waribiki'},
    {'word': 'Sale', 'hiragana': 'せーる', 'romaji': 'Seeru'},
    {'word': 'Price', 'hiragana': 'ねだん', 'romaji': 'Nedan'},
    {'word': 'Expensive', 'hiragana': 'たかい', 'romaji': 'Takai'},
    {'word': 'Cheap', 'hiragana': 'やすい', 'romaji': 'Yasui'},
    {'word': 'Free', 'hiragana': 'むりょう', 'romaji': 'Muryou'},

    // MONEY AND PAYMENT
    {'word': 'Money', 'hiragana': 'おかね', 'romaji': 'Okane'},
    {'word': 'Cash', 'hiragana': 'げんきん', 'romaji': 'Genkin'},
    {'word': 'Credit card', 'hiragana': 'くれじっとかーど', 'romaji': 'Kurejitto kaado'},
    {'word': 'Debit card', 'hiragana': 'でびっとかーど', 'romaji': 'Debitto kaado'},
    {'word': 'Coins', 'hiragana': 'こうか', 'romaji': 'Kouka'},
    {'word': 'Banknotes', 'hiragana': 'さつ', 'romaji': 'Satsu'},
    {'word': 'Change', 'hiragana': 'おつり', 'romaji': 'Otsuri'},
    {'word': 'Wallet', 'hiragana': 'さいふ', 'romaji': 'Saifu'},
    {'word': 'Payment', 'hiragana': 'しはらい', 'romaji': 'Shiharai'},
    {'word': 'Tax', 'hiragana': 'ぜいきん', 'romaji': 'Zeikin'},
    {'word': 'Tax-free', 'hiragana': 'ぜいぬき', 'romaji': 'Zeinuki'},
    {'word': 'How much?', 'hiragana': 'いくらですか？', 'romaji': 'Ikura desu ka?'},

    // CLOTHING AND ACCESSORIES
    {'word': 'Clothes', 'hiragana': 'ふく', 'romaji': 'Fuku'},
    {'word': 'Shirt', 'hiragana': 'しゃつ', 'romaji': 'Shatsu'},
    {'word': 'T-shirt', 'hiragana': 'てぃーしゃつ', 'romaji': 'Tii shatsu'},
    {'word': 'Trousers', 'hiragana': 'ずぼん', 'romaji': 'Zubon'},
    {'word': 'Skirt', 'hiragana': 'すかーと', 'romaji': 'Sukaato'},
    {'word': 'Dress', 'hiragana': 'どれす', 'romaji': 'Doresu'},
    {'word': 'Jacket', 'hiragana': 'じゃけっと', 'romaji': 'Jaketto'},
    {'word': 'Coat', 'hiragana': 'こーと', 'romaji': 'Kooto'},
    {'word': 'Shoes', 'hiragana': 'くつ', 'romaji': 'Kutsu'},
    {'word': 'Socks', 'hiragana': 'くつした', 'romaji': 'Kutsushita'},
    {'word': 'Hat', 'hiragana': 'ぼうし', 'romaji': 'Boushi'},
    {'word': 'Bag', 'hiragana': 'かばん', 'romaji': 'Kaban'},
    {'word': 'Handbag', 'hiragana': 'はんどばっぐ', 'romaji': 'Handobaggu'},
    {'word': 'Watch', 'hiragana': 'うでどけい', 'romaji': 'Udedokei'},
    {'word': 'Glasses', 'hiragana': 'めがね', 'romaji': 'Megane'},
    {'word': 'Umbrella', 'hiragana': 'かさ', 'romaji': 'Kasa'},
    {'word': 'Ring', 'hiragana': 'ゆびわ', 'romaji': 'Yubiwa'},
    {'word': 'Necklace', 'hiragana': 'ねっくれす', 'romaji': 'Nekkuresu'},

    // SIZES AND FITTING
    {'word': 'Size', 'hiragana': 'さいず', 'romaji': 'Saizu'},
    {'word': 'Small', 'hiragana': 'ちいさい', 'romaji': 'Chiisai'},
    {'word': 'Medium', 'hiragana': 'ちゅうくらい', 'romaji': 'Chuukurai'},
    {'word': 'Large', 'hiragana': 'おおきい', 'romaji': 'Ookii'},
    {'word': 'Extra large', 'hiragana': 'とてもおおきい', 'romaji': 'Totemo ookii'},
    {'word': 'Fitting room', 'hiragana': 'しちゃくしつ', 'romaji': 'Shichakushitsu'},
    {'word': 'Try on', 'hiragana': 'しちゃくする', 'romaji': 'Shichaku suru'},
    {'word': 'It fits', 'hiragana': 'ぴったりです', 'romaji': 'Pittari desu'},
    {'word': 'Too big', 'hiragana': 'おおきすぎます', 'romaji': 'Ookisugimasu'},
    {'word': 'Too small', 'hiragana': 'ちいさすぎます', 'romaji': 'Chiisasugimasu'},

    // FOOD SHOPPING
    {'word': 'Food', 'hiragana': 'たべもの', 'romaji': 'Tabemono'},
    {'word': 'Fruit', 'hiragana': 'くだもの', 'romaji': 'Kudamono'},
    {'word': 'Vegetables', 'hiragana': 'やさい', 'romaji': 'Yasai'},
    {'word': 'Meat', 'hiragana': 'にく', 'romaji': 'Niku'},
    {'word': 'Fish', 'hiragana': 'さかな', 'romaji': 'Sakana'},
    {'word': 'Bread', 'hiragana': 'ぱん', 'romaji': 'Pan'},
    {'word': 'Milk', 'hiragana': 'ぎゅうにゅう', 'romaji': 'Gyuunyuu'},
    {'word': 'Eggs', 'hiragana': 'たまご', 'romaji': 'Tamago'},
    {'word': 'Rice', 'hiragana': 'こめ', 'romaji': 'Kome'},
    {'word': 'Water', 'hiragana': 'みず', 'romaji': 'Mizu'},
    {'word': 'Juice', 'hiragana': 'じゅーす', 'romaji': 'Juusu'},

    // USEFUL SHOPPING PHRASES
    {'word': 'How much is this?', 'hiragana': 'これはいくらですか？', 'romaji': 'Kore wa ikura desu ka?'},
    {'word': 'How much is that?', 'hiragana': 'それはいくらですか？', 'romaji': 'Sore wa ikura desu ka?'},
    {'word': 'I want this.', 'hiragana': 'これがほしいです。', 'romaji': 'Kore ga hoshii desu.'},
    {'word': 'I am just looking.', 'hiragana': 'みているだけです。', 'romaji': 'Mite iru dake desu.'},
    {'word': 'Do you have this?', 'hiragana': 'これはありますか？', 'romaji': 'Kore wa arimasu ka?'},
    {'word': 'Do you have another colour?', 'hiragana': 'ほかのいろはありますか？', 'romaji': 'Hoka no iro wa arimasu ka?'},
    {'word': 'Do you have a smaller size?', 'hiragana': 'もっとちいさいさいずはありますか？', 'romaji': 'Motto chiisai saizu wa arimasu ka?'},
    {'word': 'Do you have a bigger size?', 'hiragana': 'もっとおおきいさいずはありますか？', 'romaji': 'Motto ookii saizu wa arimasu ka?'},
    {'word': 'Can I try this on?', 'hiragana': 'これをしちゃくしてもいいですか？', 'romaji': 'Kore o shichaku shite mo ii desu ka?'},
    {'word': 'I will take this.', 'hiragana': 'これをください。', 'romaji': 'Kore o kudasai.'},
    {'word': 'Can I pay by card?', 'hiragana': 'かーどではらえますか？', 'romaji': 'Kaado de haraemasu ka?'},
    {'word': 'Can I pay in cash?', 'hiragana': 'げんきんではらえますか？', 'romaji': 'Genkin de haraemasu ka?'},
    {'word': 'Can I have a bag?', 'hiragana': 'ふくろをもらえますか？', 'romaji': 'Fukuro o moraemasu ka?'},
    {'word': 'Please give me a receipt.', 'hiragana': 'れしーとをください。', 'romaji': 'Reshiito o kudasai.'},
    {'word': 'Is there a discount?', 'hiragana': 'わりびきはありますか？', 'romaji': 'Waribiki wa arimasu ka?'},
    {'word': 'That is too expensive.', 'hiragana': 'それはたかすぎます。', 'romaji': 'Sore wa takasugimasu.'},
    {'word': 'Do you accept credit cards?', 'hiragana': 'くれじっとかーどはつかえますか？', 'romaji': 'Kurejitto kaado wa tsukaemasu ka?'},
    {'word': 'Where is the cashier?', 'hiragana': 'れじはどこですか？', 'romaji': 'Reji wa doko desu ka?'},
    {'word': 'Where is the supermarket?', 'hiragana': 'すーぱーはどこですか？', 'romaji': 'Suupaa wa doko desu ka?'},
    {'word': 'Thank you.', 'hiragana': 'ありがとうございます。', 'romaji': 'Arigatou gozaimasu.'},
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
          'S h o p p i n g',
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
                                fontSize: 28,
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
                                fontSize: 34,
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