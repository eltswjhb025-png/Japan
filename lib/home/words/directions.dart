import 'package:flutter/material.dart';

class DirectionsScreen extends StatelessWidget{
  const DirectionsScreen({super.key});

  final List<Map<String, String>> directions = const [
    {'word': 'Where is...?', 'hiragana': '…はどこですか？', 'romaji': '... wa doko desu ka?'},
    {'word': 'How far is it?', 'hiragana': 'どのくらいとおいですか？', 'romaji': 'Dono kurai tooi desu ka?'},
    {'word': 'How do I get there?', 'hiragana': 'どうやってそこへいきますか？', 'romaji': 'Dou yatte soko e ikimasu ka?'},
    {'word': 'Can you show me where it is on the map?', 'hiragana': 'ちずでどこにあるかみせてもらえますか？', 'romaji': 'Chizu de doko ni aru ka misete moraemasu ka?'},

    {'word': 'North', 'hiragana': 'きた', 'romaji': 'Kita'},
    {'word': 'South', 'hiragana': 'みなみ', 'romaji': 'Minami'},
    {'word': 'East', 'hiragana': 'ひがし', 'romaji': 'Higashi'},
    {'word': 'West', 'hiragana': 'にし', 'romaji': 'Nishi'},

    {'word': 'Cross the street', 'hiragana': 'みちをわたる', 'romaji': 'Michi o wataru'},
    {'word': 'Turn left', 'hiragana': 'ひだりにまがる', 'romaji': 'Hidari ni magaru'},
    {'word': 'Turn right', 'hiragana': 'みぎにまがる', 'romaji': 'Migi ni magaru'},
    {'word': 'Up', 'hiragana': 'うえ', 'romaji': 'Ue'},
    {'word': 'Down', 'hiragana': 'した', 'romaji': 'Shita'},
    {'word': 'Go straight', 'hiragana': 'まっすぐいく', 'romaji': 'Massugu iku'},
    {'word': 'Left', 'hiragana': 'ひだり', 'romaji': 'Hidari'},
    {'word': 'Right', 'hiragana': 'みぎ', 'romaji': 'Migi'},

    {'word': 'In front of', 'hiragana': 'まえ', 'romaji': 'Mae'},
    {'word': 'Behind', 'hiragana': 'うしろ', 'romaji': 'Ushiro'},
    {'word': 'Under', 'hiragana': 'した', 'romaji': 'Shita'},
    {'word': 'On top', 'hiragana': 'うえ', 'romaji': 'Ue'},
    {'word': 'Opposite', 'hiragana': 'むかい', 'romaji': 'Mukai'},
    {'word': 'Near', 'hiragana': 'ちかく', 'romaji': 'Chikaku'},
    {'word': 'On the corner', 'hiragana': 'かどに', 'romaji': 'Kado ni'},

    {'word': "It's straight ahead.", 'hiragana': 'まっすぐです。', 'romaji': 'Massugu desu.'},
    {'word': 'Here', 'hiragana': 'ここ', 'romaji': 'Koko'},
    {'word': 'There', 'hiragana': 'そこ', 'romaji': 'Soko'},

    {'word': 'Traffic lights', 'hiragana': 'しんごう', 'romaji': 'Shingou'},
    {'word': 'Intersection', 'hiragana': 'こうさてん', 'romaji': 'Kousaten'},
    {'word': 'Airport', 'hiragana': 'くうこう', 'romaji': 'Kuukou'},
    {'word': 'Bus stop', 'hiragana': 'ばすてい', 'romaji': 'Basutei'},
    {'word': 'Train station', 'hiragana': 'えき', 'romaji': 'Eki'},
    {'word': 'Tourist information', 'hiragana': 'かんこうあんないじょ', 'romaji': 'Kankou annaijo'},
    {'word': 'Department store', 'hiragana': 'ひゃっかてん', 'romaji': 'Hyakkaten'},
    {'word': 'Bank', 'hiragana': 'ぎんこう', 'romaji': 'Ginkou'},
    {'word': 'ATM', 'hiragana': 'えーてぃーえむ', 'romaji': 'Eeti emu'},
    {'word': 'Hotel', 'hiragana': 'ほてる', 'romaji': 'Hoteru'},
    {'word': 'Internet cafe', 'hiragana': 'いんたーねっとかふぇ', 'romaji': 'Intaanetto kafe'},
    {'word': 'Market', 'hiragana': 'いちば', 'romaji': 'Ichiba'},
    {'word': 'Police station', 'hiragana': 'けいさつしょ', 'romaji': 'Keisatsusho'},
    {'word': 'Supermarket', 'hiragana': 'すーぱー', 'romaji': 'Suupaa'},
    {'word': 'Post office', 'hiragana': 'ゆうびんきょく', 'romaji': 'Yuubinkyoku'},
    {'word': 'Cinema', 'hiragana': 'えいがかん', 'romaji': 'Eigakan'},
    {'word': 'Chemist/Pharmacy', 'hiragana': 'くすりや', 'romaji': 'Kusuriya'},
    {'word': 'School', 'hiragana': 'がっこう', 'romaji': 'Gakkou'},
    {'word': 'House', 'hiragana': 'いえ', 'romaji': 'Ie'},

    {'word': '5-minute walk', 'hiragana': 'ごふんあるいて', 'romaji': 'Gofun aruite'},
    {'word': 'Go by taxi', 'hiragana': 'たくしーでいく', 'romaji': 'Takushii de iku'},
    {'word': 'Overhead walkway', 'hiragana': 'ほどうきょう', 'romaji': 'Hodoukyou'},
    {'word': 'Zebra crossing', 'hiragana': 'おうだんほどう', 'romaji': 'Oudan hodou'},
    {'word': 'Bridge', 'hiragana': 'はし', 'romaji': 'Hashi'},
    {'word': 'Road', 'hiragana': 'みち', 'romaji': 'Michi'},
    {'word': 'Tunnel', 'hiragana': 'とんねる', 'romaji': 'Tonneru'},
    {'word': 'Park', 'hiragana': 'こうえん', 'romaji': 'Kouen'},
    {'word': 'Toilet/Bathroom', 'hiragana': 'おてあらい', 'romaji': 'Otearai'},
    {'word': 'Where is the toilet?', 'hiragana': 'おてあらいはどこですか？', 'romaji': 'Otearai wa doko desu ka?'},
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
          'D i r e c t i o n s  &  P l a c e s',
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

      //BODY
      body: ListView(
        children: directions.map((item){
          return _directionButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }
        ).toList(),
      ),
    );
  }

  //DIRECTION BUTTON
  Widget _directionButton(
      String word,
      String hiragana,
      String romaji,
      ){
    return Container(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // ENGLISH WORD
              Text(
                word,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 3),

              //HIRAGANA
              Text(
                hiragana,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 3),

              // Romanized reading
              Text(
                romaji,
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
    );
  }
}