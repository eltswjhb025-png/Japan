import 'dart:math';
import 'package:flutter/material.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  int currentIndex = 0;
  bool showAnswer = false;

  final List<Map<String, String>> cards = [
    // EMERGENCY PHRASES
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

    // EMERGENCY SERVICES
    {'word': 'Ambulance', 'hiragana': 'きゅうきゅうしゃ', 'romaji': 'Kyuukyuusha'},
    {'word': 'Hospital', 'hiragana': 'びょういん', 'romaji': 'Byouin'},
    {'word': 'Emergency', 'hiragana': 'きんきゅうじたい', 'romaji': 'Kinkyuu jitai'},
    {'word': 'Fire!', 'hiragana': 'かじです！', 'romaji': 'Kaji desu!'},
    {'word': "I've run out of gas/petrol.", 'hiragana': 'がそりんがなくなりました。', 'romaji': 'Gasorin ga nakunarimashita.'},
    {'word': "I'm lost, please help.", 'hiragana': 'みちにまよいました。たすけてください。', 'romaji': 'Michi ni mayoimashita. Tasukete kudasai.'},
    {'word': 'Police', 'hiragana': 'けいさつ', 'romaji': 'Keisatsu'},
    {'word': 'Police station', 'hiragana': 'けいさつしょ', 'romaji': 'Keisatsusho'},

    // THEFT AND LOST PROPERTY
    {'word': "I've been mugged.", 'hiragana': 'おそわれておかねをとられました。', 'romaji': 'Osowarete okane o toraremashita.'},
    {'word': "I've lost my camera.", 'hiragana': 'かめらをなくしました。', 'romaji': 'Kamera o nakushimashita.'},
    {'word': 'My bag was stolen.', 'hiragana': 'かばんをぬすまれました。', 'romaji': 'Kaban o nusumaremashita.'},
    {'word': 'I lost my bag!', 'hiragana': 'かばんをなくしました！', 'romaji': 'Kaban o nakushimashita!'},
    {'word': 'My phone was stolen.', 'hiragana': 'けいたいでんわをぬすまれました。', 'romaji': 'Keitai denwa o nusumaremashita.'},
    {'word': 'Thief!', 'hiragana': 'どろぼう！', 'romaji': 'Dorobou!'},
    {'word': 'Stop!', 'hiragana': 'とまって！', 'romaji': 'Tomatte!'},

    // POLICE AND LEGAL MATTERS
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

    // COMMUNICATION
    {'word': 'Does anyone here speak English?', 'hiragana': 'ここにえいごをはなせるひとはいますか？', 'romaji': 'Koko ni eigo o hanaseru hito wa imasu ka?'},
  ];

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
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
                    padding: const EdgeInsets.all(24),
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
                        // FRONT: ENGLISH
                        if (!showAnswer) ...[
                          const Icon(
                            Icons.touch_app,
                            color: Colors.white70,
                            size: 35,
                          ),

                          const SizedBox(height: 25),

                          Text(
                            card['word']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 25),

                          const Text(
                            'TAP TO REVEAL ANSWER',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],

                        // BACK: JAPANESE AND ROMAJI
                        if (showAnswer) ...[
                          const Icon(
                            Icons.check_circle_outline,
                            color: Colors.white70,
                            size: 35,
                          ),

                          const SizedBox(height: 25),

                          Text(
                            card['hiragana']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 15),

                          Text(
                            card['romaji']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(height: 25),

                          const Text(
                            'JAPANESE & ROMAJI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
                    onPressed: previousCard,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _flashcardButton(
                    icon: Icons.arrow_forward,
                    label: 'Next',
                    onPressed: nextCard,
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
                onPressed: shuffleCards,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // FLASHCARD BUTTON
  Widget _flashcardButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.4),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 20,
                ),

                const SizedBox(width: 8),

                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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