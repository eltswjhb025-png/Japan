import 'package:flutter/material.dart';

class TransportationScreen extends StatelessWidget {
  const TransportationScreen({super.key});

  // TRANSPORTATION VOCABULARY
  final List<Map<String, String>> transportation = const [
    // GENERAL TRANSPORTATION
    {'word': 'Transportation', 'hiragana': 'こうつう', 'romaji': 'Koutsuu'},
    {'word': 'Transport', 'hiragana': 'のりもの', 'romaji': 'Norimono'},
    {'word': 'Vehicle', 'hiragana': 'くるま', 'romaji': 'Kuruma'},
    {'word': 'Public transport', 'hiragana': 'こうきょうこうつう', 'romaji': 'Koukyou koutsuu'},
    {'word': 'Ticket', 'hiragana': 'きっぷ', 'romaji': 'Kippu'},
    {'word': 'One-way ticket', 'hiragana': 'かたみちきっぷ', 'romaji': 'Katamichi kippu'},
    {'word': 'Return ticket', 'hiragana': 'おうふくきっぷ', 'romaji': 'Oufuku kippu'},
    {'word': 'Fare', 'hiragana': 'うんちん', 'romaji': 'Unchin'},
    {'word': 'Timetable', 'hiragana': 'じこくひょう', 'romaji': 'Jikokuhyou'},
    {'word': 'Station', 'hiragana': 'えき', 'romaji': 'Eki'},
    {'word': 'Platform', 'hiragana': 'ぷらっとほーむ', 'romaji': 'Purattohoomu'},
    {'word': 'Entrance', 'hiragana': 'いりぐち', 'romaji': 'Iriguchi'},
    {'word': 'Exit', 'hiragana': 'でぐち', 'romaji': 'Deguchi'},

    // TRAINS
    {'word': 'Train', 'hiragana': 'でんしゃ', 'romaji': 'Densha'},
    {'word': 'Bullet train', 'hiragana': 'しんかんせん', 'romaji': 'Shinkansen'},
    {'word': 'Subway', 'hiragana': 'ちかてつ', 'romaji': 'Chikatetsu'},
    {'word': 'Local train', 'hiragana': 'かくえきていしゃ', 'romaji': 'Kakueki teisha'},
    {'word': 'Express train', 'hiragana': 'きゅうこうでんしゃ', 'romaji': 'Kyuukou densha'},
    {'word': 'Train station', 'hiragana': 'てつどうえき', 'romaji': 'Tetsudou eki'},
    {'word': 'Train conductor', 'hiragana': 'しゃしょう', 'romaji': 'Shashou'},

    // BUSES
    {'word': 'Bus', 'hiragana': 'ばす', 'romaji': 'Basu'},
    {'word': 'Bus stop', 'hiragana': 'ばすてい', 'romaji': 'Basutei'},
    {'word': 'Bus station', 'hiragana': 'ばすたーみなる', 'romaji': 'Basu taaminaru'},
    {'word': 'Driver', 'hiragana': 'うんてんしゅ', 'romaji': 'Untenshu'},
    {'word': 'Bus ticket', 'hiragana': 'ばすのきっぷ', 'romaji': 'Basu no kippu'},

    // TAXIS AND CARS
    {'word': 'Taxi', 'hiragana': 'たくしー', 'romaji': 'Takushii'},
    {'word': 'Car', 'hiragana': 'くるま', 'romaji': 'Kuruma'},
    {'word': 'Rental car', 'hiragana': 'れんたかー', 'romaji': 'Rentakaa'},
    {'word': 'Motorcycle', 'hiragana': 'おーとばい', 'romaji': 'Ootobai'},
    {'word': 'Bicycle', 'hiragana': 'じてんしゃ', 'romaji': 'Jitensha'},
    {'word': 'Electric scooter', 'hiragana': 'でんどうすくーたー', 'romaji': 'Dendou sukuutaa'},
    {'word': 'Parking lot', 'hiragana': 'ちゅうしゃじょう', 'romaji': 'Chuushajou'},
    {'word': 'Petrol station', 'hiragana': 'がそりんすたんど', 'romaji': 'Gasorin sutando'},
    {'word': 'Petrol', 'hiragana': 'がそりん', 'romaji': 'Gasorin'},
    {'word': 'Diesel', 'hiragana': 'でぃーぜる', 'romaji': 'Diizeru'},
    {'word': 'Traffic', 'hiragana': 'こうつう', 'romaji': 'Koutsuu'},
    {'word': 'Traffic jam', 'hiragana': 'じゅうたい', 'romaji': 'Juutai'},
    {'word': 'Traffic light', 'hiragana': 'しんごう', 'romaji': 'Shingou'},
    {'word': 'Road', 'hiragana': 'どうろ', 'romaji': 'Douro'},
    {'word': 'Highway', 'hiragana': 'こうそくどうろ', 'romaji': 'Kousoku douro'},

    // AIR TRANSPORT
    {'word': 'Airplane', 'hiragana': 'ひこうき', 'romaji': 'Hikouki'},
    {'word': 'Airport', 'hiragana': 'くうこう', 'romaji': 'Kuukou'},
    {'word': 'Flight', 'hiragana': 'びん', 'romaji': 'Bin'},
    {'word': 'Boarding pass', 'hiragana': 'とうじょうけん', 'romaji': 'Toujouken'},
    {'word': 'Departure', 'hiragana': 'しゅっぱつ', 'romaji': 'Shuppatsu'},
    {'word': 'Arrival', 'hiragana': 'とうちゃく', 'romaji': 'Touchaku'},
    {'word': 'Luggage', 'hiragana': 'にもつ', 'romaji': 'Nimotsu'},
    {'word': 'Passport', 'hiragana': 'ぱすぽーと', 'romaji': 'Pasupooto'},

    // WATER TRANSPORT
    {'word': 'Ship', 'hiragana': 'ふね', 'romaji': 'Fune'},
    {'word': 'Boat', 'hiragana': 'ぼーと', 'romaji': 'Booto'},
    {'word': 'Ferry', 'hiragana': 'ふぇりー', 'romaji': 'Ferii'},
    {'word': 'Port', 'hiragana': 'みなと', 'romaji': 'Minato'},
    {'word': 'Harbour', 'hiragana': 'こうわん', 'romaji': 'Kouwan'},

    // TRANSPORTATION PHRASES
    {'word': 'Where is the train station?', 'hiragana': 'えきはどこですか？', 'romaji': 'Eki wa doko desu ka?'},
    {'word': 'Where is the bus stop?', 'hiragana': 'ばすていはどこですか？', 'romaji': 'Basutei wa doko desu ka?'},
    {'word': 'Where can I buy a ticket?', 'hiragana': 'どこできっぷをかえますか？', 'romaji': 'Doko de kippu o kaemasu ka?'},
    {'word': 'How much is the ticket?', 'hiragana': 'きっぷはいくらですか？', 'romaji': 'Kippu wa ikura desu ka?'},
    {'word': 'What time does the train leave?', 'hiragana': 'でんしゃはなんじにでますか？', 'romaji': 'Densha wa nanji ni demasu ka?'},
    {'word': 'What time does the bus arrive?', 'hiragana': 'ばすはなんじにつきますか？', 'romaji': 'Basu wa nanji ni tsukimasu ka?'},
    {'word': 'Does this train go to Tokyo?', 'hiragana': 'このでんしゃはとうきょうにいきますか？', 'romaji': 'Kono densha wa Toukyou ni ikimasu ka?'},
    {'word': 'Which platform?', 'hiragana': 'なんばんせんですか？', 'romaji': 'Nanbansen desu ka?'},
    {'word': 'I want to go to the airport.', 'hiragana': 'くうこうにいきたいです。', 'romaji': 'Kuukou ni ikitai desu.'},
    {'word': 'Please take me to this address.', 'hiragana': 'このじゅうしょまでおねがいします。', 'romaji': 'Kono juusho made onegaishimasu.'},
    {'word': 'Please stop here.', 'hiragana': 'ここでとめてください。', 'romaji': 'Koko de tomete kudasai.'},
    {'word': 'I am lost.', 'hiragana': 'みちにまよいました。', 'romaji': 'Michi ni mayoimashita.'},
    {'word': 'Is this seat taken?', 'hiragana': 'このせきはあいていますか？', 'romaji': 'Kono seki wa aite imasu ka?'},
    {'word': 'Where should I transfer?', 'hiragana': 'どこでのりかえますか？', 'romaji': 'Doko de norikaemasu ka?'},
    {'word': 'I missed the train.', 'hiragana': 'でんしゃにのりおくれました。', 'romaji': 'Densha ni noriokuremashita.'},
    {'word': 'The train is delayed.', 'hiragana': 'でんしゃがおくれています。', 'romaji': 'Densha ga okurete imasu.'},
    {'word': 'Is this the right train?', 'hiragana': 'このでんしゃであっていますか？', 'romaji': 'Kono densha de atte imasu ka?'},
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
          'T r a n s p o r t a t i o n',
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
        children: transportation.map((item) {
          return _transportationButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // TRANSPORTATION VOCABULARY BUTTON
  Widget _transportationButton(
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