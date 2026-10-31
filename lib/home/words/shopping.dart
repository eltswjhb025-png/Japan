import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  // SHOPPING VOCABULARY
  final List<Map<String, String>> shopping = const [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      // APP BAR
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
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

      // SHOPPING VOCABULARY LIST
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: shopping.map((item) {
          return _shoppingButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // SHOPPING VOCABULARY BUTTON
  Widget _shoppingButton(String word, String hiragana, String romaji) {
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