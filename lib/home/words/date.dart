import 'package:flutter/material.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({super.key});

  // TIME AND DATE VOCABULARY
  final List<Map<String, String>> timeAndDate = const [
    // TIME
    {'word': 'What time is it?', 'hiragana': 'いまなんじですか？', 'romaji': 'Ima nanji desu ka?'},
    {'word': "It's 10 o'clock", 'hiragana': 'じゅうじです。', 'romaji': 'Juuji desu.'},
    {'word': "It's half past 10", 'hiragana': 'じゅうじはんです。', 'romaji': 'Juuji han desu.'},
    {'word': 'Quarter past 10', 'hiragana': 'じゅうじじゅうごふん', 'romaji': 'Juuji juugofun'},
    {'word': 'Quarter to 10', 'hiragana': 'くじよんじゅうごふん', 'romaji': 'Kuji yonjuugofun'},
    {'word': 'AM', 'hiragana': 'ごぜん', 'romaji': 'Gozen'},
    {'word': 'PM', 'hiragana': 'ごご', 'romaji': 'Gogo'},
    {'word': '1 hour', 'hiragana': 'いちじかん', 'romaji': 'Ichijikan'},
    {'word': 'Half an hour', 'hiragana': 'はんじかん', 'romaji': 'Hanjikan'},
    {'word': '5 minutes', 'hiragana': 'ごふん', 'romaji': 'Gofun'},
    {'word': '2 seconds', 'hiragana': 'にびょう', 'romaji': 'Nibyou'},
    {'word': 'At what time does it start?', 'hiragana': 'なんじにはじまりますか？', 'romaji': 'Nanji ni hajimarimasu ka?'},
    {'word': 'It starts at 9 AM', 'hiragana': 'ごぜんくじにはじまります。', 'romaji': 'Gozen kuji ni hajimarimasu.'},
    {'word': 'How many hours will it take?', 'hiragana': 'なんじかんかかりますか？', 'romaji': 'Nanjikan kakarimasu ka?'},
    {'word': 'How many days will it take?', 'hiragana': 'なんにちかかりますか？', 'romaji': 'Nannichi kakarimasu ka?'},
    {'word': 'Midnight', 'hiragana': 'まよなか', 'romaji': 'Mayonaka'},
    {'word': 'Noon', 'hiragana': 'しょうご', 'romaji': 'Shougo'},

    // DAYS AND TIMES OF DAY
    {'word': 'Today', 'hiragana': 'きょう', 'romaji': 'Kyou'},
    {'word': 'Yesterday', 'hiragana': 'きのう', 'romaji': 'Kinou'},
    {'word': 'Tomorrow', 'hiragana': 'あした', 'romaji': 'Ashita'},
    {'word': 'The day after tomorrow', 'hiragana': 'あさって', 'romaji': 'Asatte'},
    {'word': 'Tonight', 'hiragana': 'こんばん', 'romaji': 'Konban'},
    {'word': 'Morning', 'hiragana': 'あさ', 'romaji': 'Asa'},
    {'word': 'Afternoon', 'hiragana': 'ごご', 'romaji': 'Gogo'},
    {'word': 'Evening', 'hiragana': 'ゆうがた', 'romaji': 'Yuugata'},
    {'word': 'Now', 'hiragana': 'いま', 'romaji': 'Ima'},
    {'word': 'Soon', 'hiragana': 'もうすぐ', 'romaji': 'Mousugu'},
    {'word': 'This week', 'hiragana': 'こんしゅう', 'romaji': 'Konshuu'},
    {'word': 'Last week', 'hiragana': 'せんしゅう', 'romaji': 'Senshuu'},
    {'word': 'What day is today?', 'hiragana': 'きょうはなんようびですか？', 'romaji': 'Kyou wa nan-youbi desu ka?'},

    // DAYS OF THE WEEK
    {'word': 'Monday', 'hiragana': 'げつようび', 'romaji': 'Getsuyoubi'},
    {'word': 'Tuesday', 'hiragana': 'かようび', 'romaji': 'Kayoubi'},
    {'word': 'Wednesday', 'hiragana': 'すいようび', 'romaji': 'Suiyoubi'},
    {'word': 'Thursday', 'hiragana': 'もくようび', 'romaji': 'Mokuyoubi'},
    {'word': 'Friday', 'hiragana': 'きんようび', 'romaji': 'Kinyoubi'},
    {'word': 'Saturday', 'hiragana': 'どようび', 'romaji': 'Doyoubi'},
    {'word': 'Sunday', 'hiragana': 'にちようび', 'romaji': 'Nichiyoubi'},

    // MONTHS
    {'word': 'What month is it?', 'hiragana': 'いまなんがつですか？', 'romaji': 'Ima nangatsu desu ka?'},
    {'word': 'January', 'hiragana': 'いちがつ', 'romaji': 'Ichigatsu'},
    {'word': 'February', 'hiragana': 'にがつ', 'romaji': 'Nigatsu'},
    {'word': 'March', 'hiragana': 'さんがつ', 'romaji': 'Sangatsu'},
    {'word': 'April', 'hiragana': 'しがつ', 'romaji': 'Shigatsu'},
    {'word': 'May', 'hiragana': 'ごがつ', 'romaji': 'Gogatsu'},
    {'word': 'June', 'hiragana': 'ろくがつ', 'romaji': 'Rokugatsu'},
    {'word': 'July', 'hiragana': 'しちがつ', 'romaji': 'Shichigatsu'},
    {'word': 'August', 'hiragana': 'はちがつ', 'romaji': 'Hachigatsu'},
    {'word': 'September', 'hiragana': 'くがつ', 'romaji': 'Kugatsu'},
    {'word': 'October', 'hiragana': 'じゅうがつ', 'romaji': 'Juugatsu'},
    {'word': 'November', 'hiragana': 'じゅういちがつ', 'romaji': 'Juuichigatsu'},
    {'word': 'December', 'hiragana': 'じゅうにがつ', 'romaji': 'Juunigatsu'},
    {'word': 'This month', 'hiragana': 'こんげつ', 'romaji': 'Kongetsu'},
    {'word': 'Next month', 'hiragana': 'らいげつ', 'romaji': 'Raigetsu'},

    // SEASONS
    {'word': 'Spring', 'hiragana': 'はる', 'romaji': 'Haru'},
    {'word': 'Summer', 'hiragana': 'なつ', 'romaji': 'Natsu'},
    {'word': 'Autumn', 'hiragana': 'あき', 'romaji': 'Aki'},
    {'word': 'Winter', 'hiragana': 'ふゆ', 'romaji': 'Fuyu'},

    // YEARS
    {'word': 'This year', 'hiragana': 'ことし', 'romaji': 'Kotoshi'},
    {'word': 'Next year', 'hiragana': 'らいねん', 'romaji': 'Rainen'},
    {'word': 'Last year', 'hiragana': 'きょねん', 'romaji': 'Kyonen'},
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
          'D a t e  &  T i m e',
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
        children: timeAndDate.map((item) {
          return _dateButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }).toList(),
      ),
    );
  }

  // TIME AND DATE VOCABULARY BUTTON
  Widget _dateButton(String word, String hiragana, String romaji) {
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