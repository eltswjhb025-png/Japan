import 'dart:math';
import 'package:flutter/material.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  // GENERAL CONVERSATION VOCABULARY
  final List<Map<String, String>> usefulPhrases = [
    // BASIC RESPONSES
    {
      'word': 'Yes',
      'hiragana': 'はい',
      'romaji': 'Hai'
    },
    {
      'word': 'No',
      'hiragana': 'いいえ',
      'romaji': 'Iie'
    },
    {
      'word': 'Do you understand?',
      'hiragana': 'わかりますか？',
      'romaji': 'Wakarimasu ka?'
    },
    {
      'word': "I don't understand.",
      'hiragana': 'わかりません。',
      'romaji': 'Wakarimasen.'
    },
    {
      'word': 'I understand.',
      'hiragana': 'わかります。',
      'romaji': 'Wakarimasu.'
    },

    // POLITE EXPRESSIONS
    {
      'word': 'Thank you.',
      'hiragana': 'ありがとう。',
      'romaji': 'Arigatou.'
    },
    {
      'word': 'Please.',
      'hiragana': 'おねがいします。',
      'romaji': 'Onegaishimasu.'
    },
    {
      'word': "I'm sorry. (Apologize)",
      'hiragana': 'ごめんなさい。',
      'romaji': 'Gomen nasai.'
    },
    {
      'word': 'Please say that again.',
      'hiragana': 'もういちどいってください。',
      'romaji': 'Mou ichido itte kudasai.'
    },
    {
      'word': 'Can you speak slowly?',
      'hiragana': 'ゆっくりはなせますか？',
      'romaji': 'Yukkuri hanasemasu ka?'
    },
    {
      'word': 'No, thank you.',
      'hiragana': 'いいえ、ありがとう。',
      'romaji': 'Iie, arigatou.'
    },
    {
      'word': 'Congratulations!',
      'hiragana': 'おめでとうございます！',
      'romaji': 'Omedetou gozaimasu!'
    },
    {
      'word': "I'm sorry. (Sympathy)",
      'hiragana': 'かわいそうですね。',
      'romaji': 'Kawaisou desu ne.'
    },
    {
      'word': "It's alright. (I'm okay)",
      'hiragana': 'だいじょうぶです。',
      'romaji': 'Daijoubu desu.'
    },
    {
      'word': "I don't know.",
      'hiragana': 'しりません。',
      'romaji': 'Shirimasen.'
    },
    {
      'word': "I don't like it.",
      'hiragana': 'すきではありません。',
      'romaji': 'Suki dewa arimasen.'
    },
    {
      'word': 'I like it.',
      'hiragana': 'すきです。',
      'romaji': 'Suki desu.'
    },
    {
      'word': "You're welcome.",
      'hiragana': 'どういたしまして。',
      'romaji': 'Dou itashimashite.'
    },
    {
      'word': 'I understand that...',
      'hiragana': 'それはわかります。',
      'romaji': 'Sore wa wakarimasu.'
    },
    {
      'word': 'I think that...',
      'hiragana': 'そうおもいます。',
      'romaji': 'Sou omoimasu.'
    },
    {
      'word': 'I would like / I want...',
      'hiragana': 'ほしいです。',
      'romaji': 'Hoshii desu.'
    },
    {
      'word': 'I like...',
      'hiragana': 'すきです。',
      'romaji': 'Suki desu.'
    },

    // QUESTIONS AND REQUESTS
    {
      'word': 'May I use your phone?',
      'hiragana': 'あなたのでんわをつかってもいいですか？',
      'romaji': 'Anata no denwa o tsukatte mo ii desu ka?'
    },
    {
      'word': 'Are you sure?',
      'hiragana': 'ほんとうですか？',
      'romaji': 'Hontou desu ka?'
    },
    {
      'word': 'Can you speak English?',
      'hiragana': 'えいごをはなせますか？',
      'romaji': 'Eigo o hanasemasu ka?'
    },
    {
      'word': 'What does this mean?',
      'hiragana': 'これはどういういみですか？',
      'romaji': 'Kore wa dou iu imi desu ka?'
    },
    {
      'word': 'How do you pronounce this?',
      'hiragana': 'これはどうはつおんしますか？',
      'romaji': 'Kore wa dou hatsuon shimasu ka?'
    },
    {
      'word': 'Could you write that down for me in Korean characters?',
      'hiragana': 'かんこくごのもじでかいてもらえますか？',
      'romaji': 'Kankokugo no moji de kaite moraemasu ka?'
    },
    {
      'word': 'No, thanks!',
      'hiragana': 'いいえ、ありがとう！',
      'romaji': 'Iie, arigatou!'
    },
    {
      'word': "No, that's wrong.",
      'hiragana': 'いいえ、ちがいます。',
      'romaji': 'Iie, chigaimasu.'
    },
    {
      'word': "That's right.",
      'hiragana': 'そうです。',
      'romaji': 'Sou desu.'
    },
    {
      'word': 'No problem.',
      'hiragana': 'もんだいありません。',
      'romaji': 'Mondai arimasen.'
    },
    {
      'word': 'Help!',
      'hiragana': 'たすけて！',
      'romaji': 'Tasukete!'
    },

    // QUESTION WORDS
    {
      'word': 'Who?',
      'hiragana': 'だれ？',
      'romaji': 'Dare?'
    },
    {
      'word': 'What?',
      'hiragana': 'なに？',
      'romaji': 'Nani?'
    },
    {
      'word': 'How many?',
      'hiragana': 'いくつ？',
      'romaji': 'Ikutsu?'
    },
    {
      'word': 'How much?',
      'hiragana': 'いくら？',
      'romaji': 'Ikura?'
    },
    {
      'word': 'Why?',
      'hiragana': 'どうして？',
      'romaji': 'Doushite?'
    },
    {
      'word': 'Why not?',
      'hiragana': 'どうしてだめ？',
      'romaji': 'Doushite dame?'
    },
    {
      'word': 'Which?',
      'hiragana': 'どれ？',
      'romaji': 'Dore?'
    },
    {
      'word': 'Where?',
      'hiragana': 'どこ？',
      'romaji': 'Doko?'
    },
    {
      'word': 'When?',
      'hiragana': 'いつ？',
      'romaji': 'Itsu?'
    },

    // EVERYDAY CONVERSATION
    {
      'word': 'When is your birthday?',
      'hiragana': 'たんじょうびはいつですか？',
      'romaji': 'Tanjoubi wa itsu desu ka?'
    },
    {
      'word': 'What are you doing now?',
      'hiragana': 'いまなにをしていますか？',
      'romaji': 'Ima nani o shiteimasu ka?'
    },
    {
      'word': 'Where are you going?',
      'hiragana': 'どこへいきますか？',
      'romaji': 'Doko e ikimasu ka?'
    },
    {
      'word': "I'm going to...",
      'hiragana': '…へいきます。',
      'romaji': '... e ikimasu.'
    },
    {
      'word': "What's this?",
      'hiragana': 'これはなんですか？',
      'romaji': 'Kore wa nan desu ka?'
    },
    {
      'word': 'Are you confident?',
      'hiragana': 'じしんがありますか？',
      'romaji': 'Jishin ga arimasu ka?'
    },
    {
      'word': "Don't forget.",
      'hiragana': 'わすれないでください。',
      'romaji': 'Wasurenaide kudasai.'
    },
    {
      'word': 'Excuse me.',
      'hiragana': 'すみません。',
      'romaji': 'Sumimasen.'
    },
    {
      'word': 'Take care of yourself.',
      'hiragana': 'おからだをたいせつにしてください。',
      'romaji': 'Okarada o taisetsu ni shite kudasai.'
    },

    // TIME AND SEQUENCING
    {
      'word': 'Before',
      'hiragana': 'まえに',
      'romaji': 'Mae ni'
    },
    {
      'word': 'I want to go shopping before watching the movie.',
      'hiragana': 'えいがをみるまえにかいものにいきたいです。',
      'romaji': 'Eiga o miru mae ni kaimono ni ikitai desu.'
    },
    {
      'word': 'After',
      'hiragana': 'あとで',
      'romaji': 'Ato de'
    },
    {
      'word': "I'll watch a movie after going shopping.",
      'hiragana': 'かいものにいったあとでえいがをみます。',
      'romaji': 'Kaimono ni itta ato de eiga o mimasu.'
    },
    {
      'word': 'Until',
      'hiragana': 'まで',
      'romaji': 'Made'
    },
    {
      'word': "I don't have to go until tomorrow.",
      'hiragana': 'あしたまでいかなくてもいいです。',
      'romaji': 'Ashita made ikanakute mo ii desu.'
    },

    // PLACES AND LOCATIONS
    {
      'word': 'Where is the toilet?',
      'hiragana': 'おてあらいはどこですか？',
      'romaji': 'Otearai wa doko desu ka?'
    },
    {
      'word': 'Do you live here?',
      'hiragana': 'ここにすんでいますか？',
      'romaji': 'Koko ni sundeimasu ka?'
    },
    {
      'word': 'Do you like it here?',
      'hiragana': 'ここがすきですか？',
      'romaji': 'Koko ga suki desu ka?'
    },
    {
      'word': 'I love it here.',
      'hiragana': 'ここがだいすきです。',
      'romaji': 'Koko ga daisuki desu.'
    },

    // REASONS FOR VISITING
    {
      'word': "I'm here on holiday.",
      'hiragana': 'ここへりょこうできています。',
      'romaji': 'Koko e ryokou de kiteimasu.'
    },
    {
      'word': 'On business.',
      'hiragana': 'しごとできています。',
      'romaji': 'Shigoto de kiteimasu.'
    },
    {
      'word': 'To study.',
      'hiragana': 'べんきょうするために',
      'romaji': 'Benkyou suru tame ni'
    },

    // OTHER EXPRESSIONS
    {
      'word': 'Just kidding.',
      'hiragana': 'じょうだんです。',
      'romaji': 'Joudan desu.'
    },
    {
      'word': 'This is my first time in South Korea.',
      'hiragana': 'かんこくははじめてです。',
      'romaji': 'Kankoku wa hajimete desu.'
    },
    {
      'word': "We're on our honeymoon.",
      'hiragana': 'わたしたちはしんこんりょこうをしています。',
      'romaji': 'Watashitachi wa shinkon ryokou o shiteimasu.'
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
      currentIndex = (currentIndex + 1) % usefulPhrases.length;
      showAnswer = false;
    });
  }

  // PREVIOUS CARD
  void previousCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + usefulPhrases.length) %
              usefulPhrases.length;
      showAnswer = false;
    });
  }

  // SHUFFLE CARDS
  void shuffleCards() {
    setState(() {
      usefulPhrases.shuffle(Random());
      currentIndex = 0;
      showAnswer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final card = usefulPhrases[currentIndex];

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
          'G e n e r a l   C o n v e r s a t i o n',
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
              'Card ${currentIndex + 1} of ${usefulPhrases.length}',
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