import 'package:flutter/material.dart';

class FeelingSickScreen extends StatelessWidget {
  const FeelingSickScreen({super.key});

  // MEDICAL AND HEALTH VOCABULARY
  final List<Map<String, String>> medical = const [
    {
      'word': 'Where is the nearest hospital?',
      'hiragana': 'いちばんちかいびょういんはどこですか？',
      'romaji': 'Ichiban chikai byouin wa doko desu ka?'
    },
    {
      'word': 'Chemist / Pharmacy',
      'hiragana': 'くすりや',
      'romaji': 'Kusuriya'
    },
    {
      'word': 'Dentist',
      'hiragana': 'はいしゃ',
      'romaji': 'Haisha'
    },
    {
      'word': 'Doctor',
      'hiragana': 'いしゃ',
      'romaji': 'Isha'
    },
    {
      'word': 'Medical Center',
      'hiragana': 'いりょうせんたー',
      'romaji': 'Iryou sentaa'
    },
    {
      'word': 'Optometrist',
      'hiragana': 'しりょくけんさし',
      'romaji': 'Shiryoku kensashi'
    },
    {
      'word': "I'm not feeling well.",
      'hiragana': 'ぐあいがわるいです。',
      'romaji': 'Guai ga warui desu.'
    },
    {
      'word': "I'm sick.",
      'hiragana': 'びょうきです。',
      'romaji': 'Byouki desu.'
    },
    {
      'word': 'I have a cold.',
      'hiragana': 'かぜをひいています。',
      'romaji': 'Kaze o hiite imasu.'
    },
    {
      'word': 'Headache',
      'hiragana': 'ずつう',
      'romaji': 'Zutsuu'
    },
    {
      'word': 'Stomachache',
      'hiragana': 'いちょうのいたみ',
      'romaji': 'Ichou no itami'
    },
    {
      'word': 'Backache',
      'hiragana': 'せなかのいたみ',
      'romaji': 'Senaka no itami'
    },
    {
      'word': 'Asthma',
      'hiragana': 'ぜんそく',
      'romaji': 'Zensoku'
    },
    {
      'word': 'Cough',
      'hiragana': 'せき',
      'romaji': 'Seki'
    },
    {
      'word': 'Constipation',
      'hiragana': 'べんぴ',
      'romaji': 'Benpi'
    },
    {
      'word': 'Diabetes',
      'hiragana': 'とうにょうびょう',
      'romaji': 'Tounyoubyou'
    },
    {
      'word': 'Diarrhoea',
      'hiragana': 'げり',
      'romaji': 'Geri'
    },
    {
      'word': 'Fever',
      'hiragana': 'ねつ',
      'romaji': 'Netsu'
    },
    {
      'word': 'Flu',
      'hiragana': 'いんふるえんざ',
      'romaji': 'Infuruenza'
    },
    {
      'word': 'Sore throat',
      'hiragana': 'のどのいたみ',
      'romaji': 'Nodo no itami'
    },
    {
      'word': 'Food poisoning',
      'hiragana': 'しょくちゅうどく',
      'romaji': 'Shokuchuudoku'
    },
    {
      'word': 'Allergy',
      'hiragana': 'あれるぎー',
      'romaji': 'Arerugii'
    },
    {
      'word': 'Do you have paracetamol?',
      'hiragana': 'あせとあみのふぇんはありますか？',
      'romaji': 'Asetoaminofen wa arimasu ka?'
    },
    {
      'word': 'I have a temperature.',
      'hiragana': 'ねつがあります。',
      'romaji': 'Netsu ga arimasu.'
    },
    {
      'word': 'Vomit',
      'hiragana': 'おうと',
      'romaji': 'Outo'
    },
    {
      'word': 'I feel dizzy.',
      'hiragana': 'めまいがします。',
      'romaji': 'Memai ga shimasu.'
    },
    {
      'word': 'Weak',
      'hiragana': 'からだがよわっています。',
      'romaji': 'Karada ga yowatte imasu.'
    },
    {
      'word': 'Anxious',
      'hiragana': 'ふあんです。',
      'romaji': 'Fuan desu.'
    },
    {
      'word': 'Nauseous',
      'hiragana': 'はきけがします。',
      'romaji': 'Hakike ga shimasu.'
    },
    {
      'word': 'Shivery',
      'hiragana': 'さむけがします。',
      'romaji': 'Samuke ga shimasu.'
    },
    {
      'word': 'Worse',
      'hiragana': 'わるくなりました。',
      'romaji': 'Waruku narimashita.'
    },
    {
      'word': 'Better',
      'hiragana': 'よくなりました。',
      'romaji': 'Yoku narimashita.'
    },
    {
      'word': 'It hurts here.',
      'hiragana': 'ここがいたいです。',
      'romaji': 'Koko ga itai desu.'
    },
    {
      'word': "I can't sleep.",
      'hiragana': 'ねむれません。',
      'romaji': 'Nemuremasen.'
    },
    {
      'word': "I've run out of my medication.",
      'hiragana': 'くすりがなくなりました。',
      'romaji': 'Kusuri ga nakunarimashita.'
    },
    {
      'word': 'This is my usual medication.',
      'hiragana': 'これはいつものくすりです。',
      'romaji': 'Kore wa itsumo no kusuri desu.'
    },
    {
      'word': 'I need a doctor who can speak English.',
      'hiragana': 'えいごをはなせるいしゃがひつようです。',
      'romaji': 'Eigo o hanaseru isha ga hitsuyou desu.'
    },
    {
      'word': 'I have had vaccination.',
      'hiragana': 'よぼうせっしゅをうけました。',
      'romaji': 'Yobou sesshu o ukemashita.'
    },
    {
      'word': 'I have travel insurance.',
      'hiragana': 'りょこうほけんにはいっています。',
      'romaji': 'Ryokou hoken ni haitte imasu.'
    },
    {
      'word': 'Ambulance',
      'hiragana': 'きゅうきゅうしゃ',
      'romaji': 'Kyuukyuusha'
    },
    {
      'word': 'Clinic',
      'hiragana': 'しんりょうじょ',
      'romaji': 'Shinryoujo'
    },
    {
      'word': 'Nurse',
      'hiragana': 'かんごし',
      'romaji': 'Kangoshi'
    },
    {
      'word': 'Surgeon',
      'hiragana': 'げかい',
      'romaji': 'Gekai'
    },
    {
      'word': 'Blood pressure',
      'hiragana': 'けつあつ',
      'romaji': 'Ketsuatsu'
    },
    {
      'word': 'Temperature',
      'hiragana': 'たいおん',
      'romaji': 'Taion'
    },
    {
      'word': 'Injection',
      'hiragana': 'ちゅうしゃ',
      'romaji': 'Chuusha'
    },
    {
      'word': 'Operation',
      'hiragana': 'しゅじゅつ',
      'romaji': 'Shujutsu'
    },
    {
      'word': 'Sprain',
      'hiragana': 'ねんざ',
      'romaji': 'Nenza'
    },
    {
      'word': "I think it's broken.",
      'hiragana': 'おれたとおもいます。',
      'romaji': 'Oreta to omoimasu.'
    },
    {
      'word': 'I have a skin allergy.',
      'hiragana': 'ひふのあれるぎーがあります。',
      'romaji': 'Hifu no arerugii ga arimasu.'
    },
    {
      'word': 'Antihistamines',
      'hiragana': 'こうひすたみんやく',
      'romaji': 'Kouhisutamin-yaku'
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
          'F e e l i n g  S i c k',
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
        children: medical.map((item) {
          return _medicalButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // MEDICAL VOCABULARY BUTTON
  Widget _medicalButton(
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