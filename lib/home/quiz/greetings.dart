import 'dart:math';
import 'package:flutter/material.dart';

class GreetingsScreen extends StatefulWidget {
  const GreetingsScreen({super.key});

  @override
  State<GreetingsScreen> createState() => _GreetingsScreenState();
}

class _GreetingsScreenState extends State<GreetingsScreen> {

  // GREETINGS VOCABULARY
  final List<Map<String, String>> cards = [
    {
      'word': 'Hello',
      'hiragana': 'こんにちは',
      'romaji': 'Konnichiwa'
    },
    {
      'word': 'How are you?',
      'hiragana': 'おげんきですか？',
      'romaji': 'Ogenki desu ka?'
    },
    {
      'word': "I'm fine, thanks.",
      'hiragana': 'げんきです、ありがとう。',
      'romaji': 'Genki desu, arigatou.'
    },
    {
      'word': "I'm not well, thanks.",
      'hiragana': 'あまりげんきではありません。',
      'romaji': 'Amari genki dewa arimasen.'
    },
    {
      'word': "What's your name?",
      'hiragana': 'おなまえはなんですか？',
      'romaji': 'Onamae wa nan desu ka?'
    },
    {
      'word': 'My name is...',
      'hiragana': 'わたしのなまえは…です。',
      'romaji': 'Watashi no namae wa ... desu.'
    },
    {
      'word': 'See you later.',
      'hiragana': 'またあとで。',
      'romaji': 'Mata ato de.'
    },
    {
      'word': 'Goodbye.',
      'hiragana': 'さようなら。',
      'romaji': 'Sayounara.'
    },
    {
      'word': 'Nice to meet you.',
      'hiragana': 'はじめまして。',
      'romaji': 'Hajimemashite.'
    },
    {
      'word': 'What about you?',
      'hiragana': 'あなたは？',
      'romaji': 'Anata wa?'
    },
    {
      'word': 'Good luck!',
      'hiragana': 'がんばって！',
      'romaji': 'Ganbatte!'
    },
    {
      'word': 'Take care.',
      'hiragana': 'きをつけてね。',
      'romaji': 'Ki o tsukete ne.'
    },
    {
      'word': "It's been a while.",
      'hiragana': 'おひさしぶりです。',
      'romaji': 'Ohisashiburi desu.'
    },
    {
      'word': 'Can you speak English?',
      'hiragana': 'えいごをはなせますか？',
      'romaji': 'Eigo o hanasemasu ka?'
    },
    {
      'word': 'I can speak a little Korean.',
      'hiragana': 'かんこくごをすこしはなせます。',
      'romaji': 'Kankokugo o sukoshi hanasemasu.'
    },
    {
      'word': "I can't speak Korean.",
      'hiragana': 'かんこくごをはなせません。',
      'romaji': 'Kankokugo o hanasemasen.'
    },
    {
      'word': "I'm from (country)...",
      'hiragana': '（くに）からきました。',
      'romaji': '(Kuni) kara kimashita.'
    },
    {
      'word': 'How old are you?',
      'hiragana': 'なんさいですか？',
      'romaji': 'Nansai desu ka?'
    },
    {
      'word': "I'm 30 years old.",
      'hiragana': 'さんじゅっさいです。',
      'romaji': 'Sanjussai desu.'
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
      currentIndex =
          (currentIndex - 1 + cards.length) % cards.length;
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
          'G r e e t i n g s',
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

                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(25),

                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.45),
                        width: 1.5,
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // FRONT OF CARD
                          if (!showAnswer) ...[

                            const Icon(
                              Icons.touch_app,
                              color: Colors.white,
                              size: 45,
                            ),

                            const SizedBox(height: 25),

                            Text(
                              card['word']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 30),

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
                          ]

                          // BACK OF CARD
                          else ...[

                            const Icon(
                              Icons.check_circle_outline,
                              color: Colors.white,
                              size: 40,
                            ),

                            const SizedBox(height: 25),

                            Text(
                              card['hiragana']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 15),

                            Text(
                              card['romaji']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            const SizedBox(height: 30),

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
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),

        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
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