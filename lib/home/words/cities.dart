import 'package:flutter/material.dart';

class CitiesScreen extends StatelessWidget {
  const CitiesScreen({super.key});

  final List<Map<String, String>> citiesInJapan = const [
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
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: citiesInJapan.map((item) {
          return _citiesButton(
            item['city']!,
            item['japanese']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // CITIES BUTTON
  Widget _citiesButton(
      String city,
      String japanese,
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
                // ENGLISH CITY NAME
                Text(
                  city,
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
                  japanese,
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