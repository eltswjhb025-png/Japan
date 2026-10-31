import 'package:flutter/material.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  final List<Map<String, String>> emergencyPhrases = const [
    {'word': "It's an emergency.", 'hiragana': 'きんきゅうじたいです。', 'romaji': 'Kinkyuu jitai desu.'},
    {'word': "I've lost my passport.", 'hiragana': 'ぱすぽーとをなくしました。', 'romaji': 'Pasupooto o nakushimashita.'},
    {'word': "I've lost my wallet.", 'hiragana': 'さいふをなくしました。', 'romaji': 'Saifu o nakushimashita.'},
    {'word': 'Where is the nearest police station?', 'hiragana': 'いちばんちかいけいさつしょはどこですか？', 'romaji': 'Ichiban chikai keisatsusho wa doko desu ka?'},
    {'word': 'Where is the ... embassy?', 'hiragana': '…たいしかんはどこですか？', 'romaji': '... taishikan wa doko desu ka?'},
    {'word': 'Help!', 'hiragana': 'たすけて！', 'romaji': 'Tasukete!'},
    {'word': 'Where is the hospital?', 'hiragana': 'びょういんはどこですか？', 'romaji': 'Byouin wa doko desu ka?'},
    {'word': 'I need a doctor.', 'hiragana': 'いしゃがひつようです。', 'romaji': 'Isha ga hitsuyou desu.'},
    {'word': 'Call a doctor!', 'hiragana': 'いしゃをよんでください！', 'romaji': 'Isha o yonde kudasai!'},
    {'word': 'Call an ambulance!', 'hiragana': 'きゅうきゅうしゃをよんでください！', 'romaji': 'Kyuukyuusha o yonde kudasai!'},
    {'word': 'Could you help me please?', 'hiragana': 'てつだってもらえますか？', 'romaji': 'Tetsudatte moraemasu ka?'},
    {'word': 'Ambulance', 'hiragana': 'きゅうきゅうしゃ', 'romaji': 'Kyuukyuusha'},
    {'word': 'Hospital', 'hiragana': 'びょういん', 'romaji': 'Byouin'},
    {'word': 'Emergency', 'hiragana': 'きんきゅうじたい', 'romaji': 'Kinkyuu jitai'},
    {'word': 'Fire!', 'hiragana': 'かじです！', 'romaji': 'Kaji desu!'},
    {'word': "I've run out of gas/petrol.", 'hiragana': 'がそりんがなくなりました。', 'romaji': 'Gasorin ga nakunarimashita.'},
    {'word': "I'm lost, please help.", 'hiragana': 'みちにまよいました。たすけてください。', 'romaji': 'Michi ni mayoimashita. Tasukete kudasai.'},
    {'word': 'Police', 'hiragana': 'けいさつ', 'romaji': 'Keisatsu'},
    {'word': 'Police station', 'hiragana': 'けいさつしょ', 'romaji': 'Keisatsusho'},
    {'word': "I've been mugged.", 'hiragana': 'おそわれておかねをとられました。', 'romaji': 'Osowarete okane o toraremashita.'},
    {'word': "I've lost my camera.", 'hiragana': 'かめらをなくしました。', 'romaji': 'Kamera o nakushimashita.'},
    {'word': 'My bag was stolen.', 'hiragana': 'かばんをぬすまれました。', 'romaji': 'Kaban o nusumaremashita.'},
    {'word': 'I lost my bag!', 'hiragana': 'かばんをなくしました！', 'romaji': 'Kaban o nakushimashita!'},
    {'word': 'My phone was stolen.', 'hiragana': 'けいたいでんわをぬすまれました。', 'romaji': 'Keitai denwa o nusumaremashita.'},
    {'word': 'Thief!', 'hiragana': 'どろぼう！', 'romaji': 'Dorobou!'},
    {'word': 'Stop!', 'hiragana': 'とまって！', 'romaji': 'Tomatte!'},
    {'word': 'I apologise.', 'hiragana': 'もうしわけありません。', 'romaji': 'Moushiwake arimasen.'},
    {'word': 'I have travel insurance.', 'hiragana': 'りょこうほけんにはいっています。', 'romaji': 'Ryokou hoken ni haitteimasu.'},
    {'word': 'Can I use your telephone?', 'hiragana': 'あなたのでんわをつかってもいいですか？', 'romaji': 'Anata no denwa o tsukatte mo ii desu ka?'},
    {'word': 'I need to call...', 'hiragana': '…にでんわをかけるひつようがあります。', 'romaji': '... ni denwa o kakeru hitsuyou ga arimasu.'},
    {'word': 'Report a missing person.', 'hiragana': 'ゆくえふめいしゃをほうこくしてください。', 'romaji': 'Yukue fumeisha o houkoku shite kudasai.'},
    {'word': 'My child has gone missing.', 'hiragana': 'こどもがいなくなりました。', 'romaji': 'Kodomo ga inaku narimashita.'},
    {'word': 'My wife is missing.', 'hiragana': 'つまがいなくなりました。', 'romaji': 'Tsuma ga inaku narimashita.'},
    {'word': 'My husband is missing.', 'hiragana': 'おっとがいなくなりました。', 'romaji': 'Otto ga inaku narimashita.'},
    {'word': "I'm sorry.", 'hiragana': 'すみません。', 'romaji': 'Sumimasen.'},
    {'word': "I didn't do it.", 'hiragana': 'わたしはやっていません。', 'romaji': 'Watashi wa yatteimasen.'},
    {'word': 'Can I have a lawyer who can speak English?', 'hiragana': 'えいごをはなせるべんごしをおねがいできますか？', 'romaji': 'Eigo o hanaseru bengoshi o onegai dekimasu ka?'},
    {'word': 'Does anyone here speak English?', 'hiragana': 'ここにえいごをはなせるひとはいますか？', 'romaji': 'Koko ni eigo o hanaseru hito wa imasu ka?'},
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
          'E m e r g e n c y',
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
        children: emergencyPhrases.map((item) {
          return _emergencyButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // EMERGENCY BUTTON
  Widget _emergencyButton(
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