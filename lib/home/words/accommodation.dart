import 'package:flutter/material.dart';

class AccommodationScreen extends StatelessWidget {
  const AccommodationScreen({super.key});

  // ACCOMMODATION VOCABULARY
  final List<Map<String, String>> accommodation = const [
    {'word': 'Hotel', 'hiragana': 'ほてる', 'romaji': 'Hoteru'},
    {'word': 'Hostel', 'hiragana': 'ほすてる', 'romaji': 'Hosuteru'},
    {'word': 'Motel', 'hiragana': 'もーてる', 'romaji': 'Mooteru'},
    {'word': 'Guesthouse', 'hiragana': 'げすとはうす', 'romaji': 'Gesutohausu'},
    {
      'word': 'Where is the nearest hotel?',
      'hiragana': 'いちばんちかいほてるはどこですか？',
      'romaji': 'Ichiban chikai hoteru wa doko desu ka?'
    },
    {
      'word': 'Where is the nearest guesthouse?',
      'hiragana': 'いちばんちかいげすとはうすはどこですか？',
      'romaji': 'Ichiban chikai gesutohausu wa doko desu ka?'
    },
    {
      'word': 'Can you recommend somewhere good?',
      'hiragana': 'おすすめのところをおしえてもらえますか？',
      'romaji': 'Osusume no tokoro o oshiete moraemasu ka?'
    },
    {'word': 'Nearby', 'hiragana': 'ちかく', 'romaji': 'Chikaku'},
    {'word': 'Cheap', 'hiragana': 'やすい', 'romaji': 'Yasui'},
    {'word': 'In the city', 'hiragana': 'まちのなか', 'romaji': 'Machi no naka'},
    {
      'word': 'Do you have a room for tonight?',
      'hiragana': 'こんやとまれるへやはありますか？',
      'romaji': 'Konya tomareru heya wa arimasu ka?'
    },
    {'word': 'Single room', 'hiragana': 'しんぐるるーむ', 'romaji': 'Shinguru ruumu'},
    {'word': 'Twin room', 'hiragana': 'ついんるーむ', 'romaji': 'Tsuin ruumu'},
    {'word': 'Double room', 'hiragana': 'だぶるるーむ', 'romaji': 'Daburu ruumu'},
    {
      'word': 'Is there an en-suite bathroom?',
      'hiragana': 'へやにせんようのばするーむはありますか？',
      'romaji': 'Heya ni senyou no basuruumu wa arimasu ka?'
    },
    {'word': 'Is there a safe?', 'hiragana': 'きんこはありますか？', 'romaji': 'Kinko wa arimasu ka?'},
    {'word': 'Is there hot water?', 'hiragana': 'おゆはでますか？', 'romaji': 'Oyu wa demasu ka?'},
    {'word': 'Is there heating?', 'hiragana': 'だんぼうはありますか？', 'romaji': 'Danbou wa arimasu ka?'},
    {
      'word': 'When is breakfast served?',
      'hiragana': 'あさごはんはなんじからですか？',
      'romaji': 'Asagohan wa nanji kara desu ka?'
    },
    {'word': 'How much per night?', 'hiragana': 'いっぱくいくらですか？', 'romaji': 'Ippaku ikura desu ka?'},
    {'word': 'Per week', 'hiragana': 'いっしゅうかんにつき', 'romaji': 'Isshuukan ni tsuki'},
    {'word': 'Per month', 'hiragana': 'いっかげつにつき', 'romaji': 'Ikkagetsu ni tsuki'},
    {'word': 'May I see it?', 'hiragana': 'みてもいいですか？', 'romaji': 'Mite mo ii desu ka?'},
    {'word': "I'll take it.", 'hiragana': 'これにします。', 'romaji': 'Kore ni shimasu.'},
    {
      'word': 'I have a room reservation.',
      'hiragana': 'へやをよやくしています。',
      'romaji': 'Heya o yoyaku shite imasu.'
    },
    {
      'word': "I'd like to check in.",
      'hiragana': 'ちぇっくいんをおねがいします。',
      'romaji': 'Chekku in o onegai shimasu.'
    },
    {
      'word': "I'd like to check out.",
      'hiragana': 'ちぇっくあうとをおねがいします。',
      'romaji': 'Chekku auto o onegai shimasu.'
    },
    {
      'word': 'What time is check-out?',
      'hiragana': 'ちぇっくあうとはなんじですか？',
      'romaji': 'Chekku auto wa nanji desu ka?'
    },
    {
      'word': 'Can I leave my bags here?',
      'hiragana': 'ここににもつをあずけてもいいですか？',
      'romaji': 'Koko ni nimotsu o azukete mo ii desu ka?'
    },
    {
      'word': 'Can I change rooms?',
      'hiragana': 'へやをかえてもいいですか？',
      'romaji': 'Heya o kaete mo ii desu ka?'
    },
    {
      'word': 'Can I see a double room?',
      'hiragana': 'だぶるるーむをみせてもらえますか？',
      'romaji': 'Daburu ruumu o misete moraemasu ka?'
    },
    {
      'word': 'Is there a message for me?',
      'hiragana': 'わたしへのでんごんはありますか？',
      'romaji': 'Watashi e no dengon wa arimasu ka?'
    },
    {
      'word': 'I left my key in the room.',
      'hiragana': 'へやにかぎをわすれました。',
      'romaji': 'Heya ni kagi o wasuremashita.'
    },
    {
      'word': 'Can I exchange money here?',
      'hiragana': 'ここでりょうがえできますか？',
      'romaji': 'Koko de ryougae dekimasu ka?'
    },
    {
      'word': 'Can I use the laundry?',
      'hiragana': 'せんたくきはつかえますか？',
      'romaji': 'Sentakuki wa tsukaemasu ka?'
    },
    {
      'word': 'Can I use the kitchen?',
      'hiragana': 'だいどころはつかえますか？',
      'romaji': 'Daidokoro wa tsukaemasu ka?'
    },
    {
      'word': 'Can I use the phone?',
      'hiragana': 'でんわをつかってもいいですか？',
      'romaji': 'Denwa o tsukatte mo ii desu ka?'
    },
    {
      'word': 'Is there internet here?',
      'hiragana': 'ここでいんたーねっとはつかえますか？',
      'romaji': 'Koko de intaanetto wa tsukaemasu ka?'
    },
    {'word': 'Do you have Wi-Fi?', 'hiragana': 'わいふぁいはありますか？', 'romaji': 'Waifai wa arimasu ka?'},
    {'word': 'What is the password?', 'hiragana': 'ぱすわーどはなんですか？', 'romaji': 'Pasuwaado wa nan desu ka?'},
    {
      'word': 'Where can I rent a cell phone?',
      'hiragana': 'どこでけいたいでんわをかりられますか？',
      'romaji': 'Doko de keitai denwa o kariraremasu ka?'
    },
    {
      'word': 'Can you call a taxi for me, please?',
      'hiragana': 'たくしーをよんでもらえますか？',
      'romaji': 'Takushii o yonde moraemasu ka?'
    },
    {
      'word': 'I had a great stay, thank you.',
      'hiragana': 'とてもかいてきにすごせました。ありがとうございます。',
      'romaji': 'Totemo kaiteki ni sugosemashita. Arigatou gozaimasu.'
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
          'A c c o m m o d a t i o n',
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
        children: accommodation.map((item) {
          return _accommodationButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // ACCOMMODATION BUTTON
  Widget _accommodationButton(
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