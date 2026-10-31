import 'dart:math';
import 'package:flutter/material.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {

  // TIME AND DATE VOCABULARY
  final List<Map<String, String>> cards = [

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

  int currentIndex = 0;
  bool showAnswer = false;

  // FLIP CARD
  void flipCard() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  // NEXT CARD
  void nextCard() {
    setState(() {
      currentIndex = (currentIndex + 1) % cards.length;
      showAnswer = false;
    });
  }

  // PREVIOUS CARD
  void previousCard() {
    setState(() {
      currentIndex = (currentIndex - 1 + cards.length) % cards.length;
      showAnswer = false;
    });
  }

  // SHUFFLE CARDS
  void shuffleCards() {
    setState(() {
      cards.shuffle(Random());
      currentIndex = 0;
      showAnswer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final card = cards[currentIndex];

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 10),

            // CARD COUNTER
            Text(
              'Card ${currentIndex + 1} of ${cards.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 20),

            // FLASHCARD
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: flipCard,
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 380,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.45),
                        width: 1.5,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        // CARD ICON
                        Icon(
                          showAnswer
                              ? Icons.check_circle_outline
                              : Icons.touch_app,
                          color: Colors.white,
                          size: 35,
                        ),

                        const SizedBox(height: 20),

                        // ENGLISH / JAPANESE
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            showAnswer
                                ? card['hiragana']!
                                : card['word']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: showAnswer ? 42 : 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // ROMAJI
                        if (showAnswer)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              card['romaji']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                        const SizedBox(height: 25),

                        // INSTRUCTION
                        Text(
                          showAnswer
                              ? 'JAPANESE & ROMAJI'
                              : 'TAP TO REVEAL ANSWER',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // PREVIOUS AND NEXT BUTTONS
            Row(
              children: [
                Expanded(
                  child: _flashcardButton(
                    icon: Icons.arrow_back,
                    label: 'Previous',
                    onTap: previousCard,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: _flashcardButton(
                    icon: Icons.arrow_forward,
                    label: 'Next',
                    onTap: nextCard,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // SHUFFLE BUTTON
            SizedBox(
              width: double.infinity,
              child: _flashcardButton(
                icon: Icons.shuffle,
                label: 'Shuffle Cards',
                onTap: shuffleCards,
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

// FLASHCARD BUTTON
Widget _flashcardButton({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
}) {
  return Material(
    color: Colors.white.withValues(alpha: 0.10),
    borderRadius: BorderRadius.circular(14),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 19,
            ),

            const SizedBox(width: 8),

            Flexible(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}