import 'package:flutter/material.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  // COUNTRIES
  final List<Map<String, String>> countries = const [
    {'country': 'Japan', 'japanese': 'にほん', 'romaji': 'Nihon'},
    {'country': 'Taiwan', 'japanese': 'たいわん', 'romaji': 'Taiwan'},
    {'country': 'Hong Kong', 'japanese': 'ほんこん', 'romaji': 'Honkon'},
    {'country': 'North Korea', 'japanese': 'きたちょうせん', 'romaji': 'Kita Chousen'},
    {'country': 'South Korea', 'japanese': 'かんこく', 'romaji': 'Kankoku'},
    {'country': 'China', 'japanese': 'ちゅうごく', 'romaji': 'Chuugoku'},
    {'country': 'Vietnam', 'japanese': 'べとなむ', 'romaji': 'Betonamu'},
    {'country': 'Thailand', 'japanese': 'たいらんど', 'romaji': 'Tairando'},
    {'country': 'Malaysia', 'japanese': 'まれーしあ', 'romaji': 'Mareeshia'},
    {'country': 'Singapore', 'japanese': 'しんがぽーる', 'romaji': 'Shingapooru'},
    {'country': 'Philippines', 'japanese': 'ふぃりぴん', 'romaji': 'Firipin'},
    {'country': 'Indonesia', 'japanese': 'いんどねしあ', 'romaji': 'Indoneshia'},
    {'country': 'Pakistan', 'japanese': 'ぱきすたん', 'romaji': 'Pakisutan'},
    {'country': 'Nepal', 'japanese': 'ねぱーる', 'romaji': 'Nepaaru'},
    {'country': 'Russia', 'japanese': 'ろしあ', 'romaji': 'Roshia'},
    {'country': 'USA', 'japanese': 'あめりか', 'romaji': 'Amerika'},
    {'country': 'Canada', 'japanese': 'かなだ', 'romaji': 'Kanada'},
    {'country': 'Mexico', 'japanese': 'めきしこ', 'romaji': 'Mekishiko'},
    {'country': 'England', 'japanese': 'いんぐらんど', 'romaji': 'Ingurando'},
    {'country': 'Scotland', 'japanese': 'すこっとらんど', 'romaji': 'Sukottorando'},
    {'country': 'Wales', 'japanese': 'うぇーるず', 'romaji': 'Weeruzu'},
    {'country': 'France', 'japanese': 'ふらんす', 'romaji': 'Furansu'},
    {'country': 'Italy', 'japanese': 'いたりあ', 'romaji': 'Itaria'},
    {'country': 'Germany', 'japanese': 'どいつ', 'romaji': 'Doitsu'},
    {'country': 'Sweden', 'japanese': 'すうぇーでん', 'romaji': 'Suweeden'},
    {'country': 'Finland', 'japanese': 'ふぃんらんど', 'romaji': 'Finrando'},
    {'country': 'Norway', 'japanese': 'のるうぇー', 'romaji': 'Noruwee'},
    {'country': 'Denmark', 'japanese': 'でんまーく', 'romaji': 'Denmaaku'},
    {'country': 'Netherlands', 'japanese': 'おらんだ', 'romaji': 'Oranda'},
    {'country': 'Portugal', 'japanese': 'ぽるとがる', 'romaji': 'Porutogaru'},
    {'country': 'Australia', 'japanese': 'おーすとらりあ', 'romaji': 'Oosutoraria'},
    {'country': 'New Zealand', 'japanese': 'にゅーじーらんど', 'romaji': 'Nyuu Jiirando'},
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
          'C o u n t r i e s',
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
        children: countries.map((item) {
          return _countriesButton(
            item['country']!,
            item['japanese']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // COUNTRIES BUTTON
  Widget _countriesButton(
      String country,
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
                // ENGLISH COUNTRY NAME
                Text(
                  country,
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