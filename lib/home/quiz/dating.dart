import 'dart:math';
import 'package:flutter/material.dart';

class DatingScreen extends StatefulWidget {
  const DatingScreen({super.key});

  @override
  State<DatingScreen> createState() => _DatingScreenState();
}

class _DatingScreenState extends State<DatingScreen> {

  // DATING VOCABULARY
  final List<Map<String, String>> cards = [
    {
      'word': "I'm single.",
      'hiragana': 'わたしはどくしんです。',
      'romaji': 'Watashi wa dokushin desu.'
    },
    {
      'word': 'Do you have a girlfriend?',
      'hiragana': 'かのじょがいますか？',
      'romaji': 'Kanojo ga imasu ka?'
    },
    {
      'word': 'Do you have a boyfriend?',
      'hiragana': 'かれしがいますか？',
      'romaji': 'Kareshi ga imasu ka?'
    },
    {
      'word': 'I have a girlfriend.',
      'hiragana': 'かのじょがいます。',
      'romaji': 'Kanojo ga imasu.'
    },
    {
      'word': "I'm here with my boyfriend.",
      'hiragana': 'かれしといっしょにきています。',
      'romaji': 'Kareshi to issho ni kiteimasu.'
    },
    {
      'word': 'Are you single?',
      'hiragana': 'どくしんですか？',
      'romaji': 'Dokushin desu ka?'
    },
    {
      'word': 'Are you married?',
      'hiragana': 'けっこんしていますか？',
      'romaji': 'Kekkon shiteimasu ka?'
    },
    {
      'word': "I'm married.",
      'hiragana': 'けっこんしています。',
      'romaji': 'Kekkon shiteimasu.'
    },
    {
      'word': 'Would you like to do something together?',
      'hiragana': 'いっしょになにかしませんか？',
      'romaji': 'Issho ni nanika shimasen ka?'
    },
    {
      'word': 'Would you like to go for a walk with me?',
      'hiragana': 'いっしょにさんぽしませんか？',
      'romaji': 'Issho ni sanpo shimasen ka?'
    },
    {
      'word': 'Would you like to watch a movie?',
      'hiragana': 'えいがをみませんか？',
      'romaji': 'Eiga o mimasen ka?'
    },
    {
      'word': 'Are you available tomorrow?',
      'hiragana': 'あしたひまですか？',
      'romaji': 'Ashita hima desu ka?'
    },
    {
      'word': "I'm available tomorrow.",
      'hiragana': 'あしたひまです。',
      'romaji': 'Ashita hima desu.'
    },
    {
      'word': 'Can I buy you a drink?',
      'hiragana': 'のみものをおごってもいいですか？',
      'romaji': 'Nomimono o ogotte mo ii desu ka?'
    },
    {
      'word': 'What will you drink?',
      'hiragana': 'なにをのみますか？',
      'romaji': 'Nani o nomimasu ka?'
    },
    {
      'word': 'Will I see you again?',
      'hiragana': 'またあえますか？',
      'romaji': 'Mata aemasu ka?'
    },
    {
      'word': 'When can we meet again?',
      'hiragana': 'つぎはいつあえますか？',
      'romaji': 'Tsugi wa itsu aemasu ka?'
    },
    {
      'word': 'Do you mind if I sit here? (to join someone)',
      'hiragana': 'ここにすわってもいいですか？',
      'romaji': 'Koko ni suwatte mo ii desu ka?'
    },
    {
      'word': 'I like you very much.',
      'hiragana': 'あなたがだいすきです。',
      'romaji': 'Anata ga daisuki desu.'
    },
    {
      'word': 'I love you.',
      'hiragana': 'あいしています。',
      'romaji': 'Ai shiteimasu.'
    },
    {
      'word': 'You are very cute.',
      'hiragana': 'あなたはとてもかわいいです。',
      'romaji': 'Anata wa totemo kawaii desu.'
    },
    {
      'word': 'You are very beautiful.',
      'hiragana': 'あなたはとてもきれいです。',
      'romaji': 'Anata wa totemo kirei desu.'
    },
    {
      'word': 'You are great.',
      'hiragana': 'あなたはすてきです。',
      'romaji': 'Anata wa suteki desu.'
    },
    {
      'word': 'Can I call you?',
      'hiragana': 'でんわしてもいいですか？',
      'romaji': 'Denwa shite mo ii desu ka?'
    },
    {
      'word': 'Do you have a condom?',
      'hiragana': 'こんどーむをもっていますか？',
      'romaji': 'Kondoomu o motteimasu ka?'
    },
    {
      'word': 'I have a condom.',
      'hiragana': 'こんどーむをもっています。',
      'romaji': 'Kondoomu o motteimasu.'
    },
    {
      'word': "I won't do it without a condom.",
      'hiragana': 'こんどーむなしではしません。',
      'romaji': 'Kondoomu nashi de wa shimasen.'
    },
    {
      'word': 'Will you go out with me?',
      'hiragana': 'わたしとつきあってくれますか？',
      'romaji': 'Watashi to tsukiatte kuremasu ka?'
    },
    {
      'word': 'Will you marry me?',
      'hiragana': 'わたしとけっこんしてくれますか？',
      'romaji': 'Watashi to kekkon shite kuremasu ka?'
    },
    {
      'word': 'Stop calling me.',
      'hiragana': 'もうでんわしないでください。',
      'romaji': 'Mou denwa shinaide kudasai.'
    },
    {
      'word': 'Are you seeing someone else?',
      'hiragana': 'ほかのひとともつきあっていますか？',
      'romaji': 'Hoka no hito to mo tsukiatteimasu ka?'
    },
    {
      'word': "I don't think it's working out.",
      'hiragana': 'うまくいっていないとおもいます。',
      'romaji': 'Umaku itte inai to omoimasu.'
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
          'D a t i n g',
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

                        // ENGLISH / HIRAGANA
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Text(
                            showAnswer
                                ? card['hiragana']!
                                : card['word']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: showAnswer ? 34 : 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // ROMAJI
                        if (showAnswer)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: Text(
                              card['romaji']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 19,
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