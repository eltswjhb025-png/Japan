import 'dart:math';
import 'package:flutter/material.dart';

class FeelingSickScreen extends StatefulWidget {
  const FeelingSickScreen({super.key});

  @override
  State<FeelingSickScreen> createState() => _FeelingSickScreenState();
}

class _FeelingSickScreenState extends State<FeelingSickScreen> {
  // MEDICAL AND HEALTH VOCABULARY
  final List<Map<String, String>> medical = [
    // MEDICAL FACILITIES
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

    // FEELING SICK
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

    // SYMPTOMS AND CONDITIONS
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

    // MEDICATION AND TREATMENT
    {
      'word': 'Do you have paracetamol?',
      'hiragana': 'あせとあみのふぇんはありますか？',
      'romaji': 'Asetoaminofen wa arimasu ka?'
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
      'word': 'Antihistamines',
      'hiragana': 'こうひすたみんやく',
      'romaji': 'Kouhisutamin-yaku'
    },

    // DESCRIBING HOW YOU FEEL
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

    // MEDICAL INFORMATION
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
      'word': 'I have a skin allergy.',
      'hiragana': 'ひふのあれるぎーがあります。',
      'romaji': 'Hifu no arerugii ga arimasu.'
    },

    // MEDICAL PROFESSIONALS AND PROCEDURES
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
      currentIndex = (currentIndex + 1) % medical.length;
      showAnswer = false;
    });
  }

  // PREVIOUS CARD
  void previousCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + medical.length) % medical.length;
      showAnswer = false;
    });
  }

  // SHUFFLE CARDS
  void shuffleCards() {
    setState(() {
      medical.shuffle(Random());
      currentIndex = 0;
      showAnswer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final card = medical[currentIndex];

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
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            // CARD COUNTER
            Text(
              'Card ${currentIndex + 1} of ${medical.length}',
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
                        // ENGLISH WORD
                        Text(
                          card['word']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 25),

                        // JAPANESE ANSWER
                        if (showAnswer) ...[
                          Text(
                            card['hiragana']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 12),

                          Text(
                            card['romaji']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(height: 20),

                          const Icon(
                            Icons.check_circle_outline,
                            color: Colors.white,
                            size: 30,
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'JAPANESE & ROMAJI',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              letterSpacing: 2,
                            ),
                          ),
                        ] else ...[
                          const Icon(
                            Icons.touch_app,
                            color: Colors.white,
                            size: 35,
                          ),

                          const SizedBox(height: 12),

                          const Text(
                            'TAP TO REVEAL ANSWER',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              letterSpacing: 2,
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
                    onTap: previousCard,
                  ),
                ),

                const SizedBox(width: 12),

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
            _flashcardButton(
              icon: Icons.shuffle,
              label: 'Shuffle Cards',
              onTap: shuffleCards,
              fullWidth: true,
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
    required VoidCallback onTap,
    bool fullWidth = false,
  }) {
    return Container(
      width: fullWidth ? double.infinity : null,

      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.20),
        borderRadius: BorderRadius.circular(14),

        border: Border.all(
          color: Colors.white.withValues(alpha: 0.40),
          width: 1,
        ),
      ),

      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14),

        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),

          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 16,
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
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
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