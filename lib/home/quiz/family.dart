import 'dart:math';
import 'package:flutter/material.dart';

class FamilyScreen extends StatefulWidget {
  const FamilyScreen({super.key});

  @override
  State<FamilyScreen> createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
  final List<Map<String, String>> family = [
    // FAMILY PHRASES
    {
      'word': 'How many people are there in your family?',
      'hiragana': 'ごかぞくはなんにんですか？',
      'romaji': 'Gokazoku wa nan-nin desu ka?'
    },
    {
      'word': 'Do you have....?',
      'hiragana': '…がありますか？',
      'romaji': '... ga arimasu ka?'
    },
    {
      'word': 'This is my...',
      'hiragana': 'これはわたしの…です。',
      'romaji': 'Kore wa watashi no ... desu.'
    },

    // BROTHERS AND SISTERS
    {
      'word': 'Brother',
      'hiragana': 'きょうだい',
      'romaji': 'Kyoudai'
    },
    {
      'word': 'Elder brother',
      'hiragana': 'あに',
      'romaji': 'Ani'
    },
    {
      'word': 'Younger brother',
      'hiragana': 'おとうと',
      'romaji': 'Otouto'
    },
    {
      'word': 'Sister',
      'hiragana': 'しまい',
      'romaji': 'Shimai'
    },
    {
      'word': 'Elder sister',
      'hiragana': 'あね',
      'romaji': 'Ane'
    },
    {
      'word': 'Younger sister',
      'hiragana': 'いもうと',
      'romaji': 'Imouto'
    },

    // PARENTS
    {
      'word': 'Mother',
      'hiragana': 'はは',
      'romaji': 'Haha'
    },
    {
      'word': 'Father',
      'hiragana': 'ちち',
      'romaji': 'Chichi'
    },

    // CHILDREN
    {
      'word': 'Son',
      'hiragana': 'むすこ',
      'romaji': 'Musuko'
    },
    {
      'word': 'Daughter',
      'hiragana': 'むすめ',
      'romaji': 'Musume'
    },

    // GRANDCHILDREN
    {
      'word': 'Grandson',
      'hiragana': 'まご',
      'romaji': 'Mago'
    },
    {
      'word': 'Granddaughter',
      'hiragana': 'まご',
      'romaji': 'Mago'
    },

    // GRANDPARENTS
    {
      'word': 'Grandmother',
      'hiragana': 'そぼ',
      'romaji': 'Sobo'
    },
    {
      'word': 'Grandfather',
      'hiragana': 'そふ',
      'romaji': 'Sofu'
    },

    // EXTENDED FAMILY
    {
      'word': 'Uncle',
      'hiragana': 'おじ',
      'romaji': 'Oji'
    },
    {
      'word': 'Aunt',
      'hiragana': 'おば',
      'romaji': 'Oba'
    },

    // HUSBAND AND WIFE
    {
      'word': 'Husband',
      'hiragana': 'おっと',
      'romaji': 'Otto'
    },
    {
      'word': 'Wife',
      'hiragana': 'つま',
      'romaji': 'Tsuma'
    },

    // RELATIONSHIPS
    {
      'word': 'Boyfriend',
      'hiragana': 'かれし',
      'romaji': 'Kareshi'
    },
    {
      'word': 'Girlfriend',
      'hiragana': 'かのじょ',
      'romaji': 'Kanojo'
    },

    // FRIENDS
    {
      'word': 'Friend',
      'hiragana': 'ともだち',
      'romaji': 'Tomodachi'
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
      currentIndex = (currentIndex + 1) % family.length;
      showAnswer = false;
    });
  }

  // PREVIOUS CARD
  void previousCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + family.length) % family.length;
      showAnswer = false;
    });
  }

  // SHUFFLE CARDS
  void shuffleCards() {
    setState(() {
      family.shuffle(Random());
      currentIndex = 0;
      showAnswer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final card = family[currentIndex];

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
          'F a m i l y',
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
              'Card ${currentIndex + 1} of ${family.length}',
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
                            fontSize: 27,
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
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 12),

                          Text(
                            card['romaji']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 19,
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