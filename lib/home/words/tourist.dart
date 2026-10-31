import 'package:flutter/material.dart';

class TouristScreen extends StatelessWidget {
  const TouristScreen({super.key});

  final List<Map<String, String>> touristAttractions = const [
    {
      'place': 'Mount Fuji',
      'japanese': 'ふじさん',
      'romaji': 'Fujisan'
    },
    {
      'place': 'Fushimi Inari Shrine',
      'japanese': 'ふしみいなりたいしゃ',
      'romaji': 'Fushimi Inari Taisha'
    },
    {
      'place': 'Kiyomizu-dera Temple',
      'japanese': 'きよみずでら',
      'romaji': 'Kiyomizu-dera'
    },
    {
      'place': 'Senso-ji Temple',
      'japanese': 'せんそうじ',
      'romaji': 'Sensouji'
    },
    {
      'place': 'Tokyo Skytree',
      'japanese': 'とうきょうすかいつりー',
      'romaji': 'Toukyou Sukaitsurii'
    },
    {
      'place': 'Shibuya Crossing',
      'japanese': 'しぶやすくらんぶるこうさてん',
      'romaji': 'Shibuya Sukuranburu Kousaten'
    },
    {
      'place': 'Arashiyama Bamboo Grove',
      'japanese': 'あらしやまちくりん',
      'romaji': 'Arashiyama Chikurin'
    },
    {
      'place': 'Osaka Castle',
      'japanese': 'おおさかじょう',
      'romaji': 'Oosaka-jou'
    },
    {
      'place': 'Nara Park',
      'japanese': 'ならこうえん',
      'romaji': 'Nara Kouen'
    },
    {
      'place': 'Itsukushima Shrine',
      'japanese': 'いつくしまじんじゃ',
      'romaji': 'Itsukushima Jinja'
    },
    {
      'place': 'Hiroshima Peace Memorial Park',
      'japanese': 'ひろしまへいわきねんこうえん',
      'romaji': 'Hiroshima Heiwa Kinen Kouen'
    },
    {
      'place': 'Tokyo Disneyland',
      'japanese': 'とうきょうでぃずにーらんど',
      'romaji': 'Toukyou Dizunii Rando'
    },
    {
      'place': 'Tokyo DisneySea',
      'japanese': 'とうきょうでぃずにーしー',
      'romaji': 'Toukyou Dizunii Shii'
    },
    {
      'place': 'Meiji Shrine',
      'japanese': 'めいじじんぐう',
      'romaji': 'Meiji Jinguu'
    },
    {
      'place': 'Imperial Palace',
      'japanese': 'こうきょ',
      'romaji': 'Koukyo'
    },
    {
      'place': 'Ginkaku-ji Temple',
      'japanese': 'ぎんかくじ',
      'romaji': 'Ginkakuji'
    },
    {
      'place': 'Kinkaku-ji Temple',
      'japanese': 'きんかくじ',
      'romaji': 'Kinkakuji'
    },
    {
      'place': 'Nijo Castle',
      'japanese': 'にじょうじょう',
      'romaji': 'Nijoujou'
    },
    {
      'place': 'Todaiji Temple',
      'japanese': 'とうだいじ',
      'romaji': 'Toudaiji'
    },
    {
      'place': 'Himeji Castle',
      'japanese': 'ひめじじょう',
      'romaji': 'Himeji-jou'
    },
    {
      'place': 'Dotonbori',
      'japanese': 'どうとんぼり',
      'romaji': 'Doutonbori'
    },
    {
      'place': 'Universal Studios Japan',
      'japanese': 'ゆにばーさるすたじおじゃぱん',
      'romaji': 'Yunibaasaru Sutajio Japan'
    },
    {
      'place': 'Shinjuku',
      'japanese': 'しんじゅく',
      'romaji': 'Shinjuku'
    },
    {
      'place': 'Akihabara',
      'japanese': 'あきはばら',
      'romaji': 'Akihabara'
    },
    {
      'place': 'Odaiba',
      'japanese': 'おだいば',
      'romaji': 'Odaiba'
    },
    {
      'place': 'Nikko Toshogu Shrine',
      'japanese': 'にっこうとうしょうぐう',
      'romaji': 'Nikkou Toushouguu'
    },
    {
      'place': 'Kamikochi',
      'japanese': 'かみこうち',
      'romaji': 'Kamikouchi'
    },
    {
      'place': 'Okinawa Churaumi Aquarium',
      'japanese': 'おきなわちゅらうみすいぞくかん',
      'romaji': 'Okinawa Churaumi Suizokukan'
    },
    {
      'place': 'Sapporo Clock Tower',
      'japanese': 'さっぽろとけいだい',
      'romaji': 'Sapporo Tokeidai'
    },
    {
      'place': 'Shirakawa-go',
      'japanese': 'しらかわごう',
      'romaji': 'Shirakawagou'
    },
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
          'T o u r i s t  A t t r a c t i o n s',
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
        children: touristAttractions.map((item) {
          return _touristButton(
            item['place']!,
            item['japanese']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // TOURIST BUTTON
  Widget _touristButton(
      String place,
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
                // ENGLISH PLACE
                Text(
                  place,
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