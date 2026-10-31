import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  final List<Map<String, String>> numbers = const [
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

    {'word': 'Twenty-one', 'hiragana': 'にじゅういち', 'romaji': 'Nijuuichi'},
    {'word': 'Twenty-two', 'hiragana': 'にじゅうに', 'romaji': 'Nijuuni'},
    {'word': 'Twenty-three', 'hiragana': 'にじゅうさん', 'romaji': 'Nijuusan'},
    {'word': 'Twenty-four', 'hiragana': 'にじゅうよん', 'romaji': 'Nijuuyon'},
    {'word': 'Twenty-five', 'hiragana': 'にじゅうご', 'romaji': 'Nijuugo'},
    {'word': 'Twenty-six', 'hiragana': 'にじゅうろく', 'romaji': 'Nijuuroku'},
    {'word': 'Twenty-seven', 'hiragana': 'にじゅうなな', 'romaji': 'Nijuunana'},
    {'word': 'Twenty-eight', 'hiragana': 'にじゅうはち', 'romaji': 'Nijuuhachi'},
    {'word': 'Twenty-nine', 'hiragana': 'にじゅうきゅう', 'romaji': 'Nijuukyuu'},

    {'word': 'Thirty', 'hiragana': 'さんじゅう', 'romaji': 'Sanjuu'},
    {'word': 'Forty', 'hiragana': 'よんじゅう', 'romaji': 'Yonjuu'},
    {'word': 'Fifty', 'hiragana': 'ごじゅう', 'romaji': 'Gojuu'},
    {'word': 'Sixty', 'hiragana': 'ろくじゅう', 'romaji': 'Rokujuu'},
    {'word': 'Seventy', 'hiragana': 'ななじゅう', 'romaji': 'Nanajuu'},
    {'word': 'Eighty', 'hiragana': 'はちじゅう', 'romaji': 'Hachijuu'},
    {'word': 'Ninety', 'hiragana': 'きゅうじゅう', 'romaji': 'Kyuujuu'},

    {'word': 'One hundred', 'hiragana': 'ひゃく', 'romaji': 'Hyaku'},
    {'word': 'One thousand', 'hiragana': 'せん', 'romaji': 'Sen'},
    {'word': 'Hundred thousand', 'hiragana': 'じゅうまん', 'romaji': 'Juuman'},
    {'word': 'One million', 'hiragana': 'ひゃくまん', 'romaji': 'Hyakuman'},

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
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: numbers.map((item) {
          return _numberButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // NUMBER BUTTON
  Widget _numberButton(
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

                // HIRAGANA
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

                // ROMANIZED READING
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
//