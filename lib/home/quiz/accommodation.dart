import 'dart:math';
import 'package:flutter/material.dart';

class AccommodationScreen extends StatefulWidget {
  const AccommodationScreen({super.key});

  @override
  State<AccommodationScreen> createState() =>
      _AccommodationScreenState();
}

class _AccommodationScreenState
    extends State<AccommodationScreen> {
  final List<Map<String, String>> cards = [
    {
      'word': 'Hotel',
      'hiragana': 'ほてる',
      'romaji': 'Hoteru',
    },
    {
      'word': 'Hostel',
      'hiragana': 'ほすてる',
      'romaji': 'Hosuteru',
    },
    {
      'word': 'Motel',
      'hiragana': 'もーてる',
      'romaji': 'Mooteru',
    },
    {
      'word': 'Guesthouse',
      'hiragana': 'げすとはうす',
      'romaji': 'Gesutohausu',
    },
    {
      'word': 'Where is the nearest hotel?',
      'hiragana': 'いちばんちかいほてるはどこですか？',
      'romaji': 'Ichiban chikai hoteru wa doko desu ka?',
    },
    {
      'word': 'Where is the nearest guesthouse?',
      'hiragana': 'いちばんちかいげすとはうすはどこですか？',
      'romaji': 'Ichiban chikai gesutohausu wa doko desu ka?',
    },
    {
      'word': 'Can you recommend somewhere good?',
      'hiragana': 'おすすめのところをおしえてもらえますか？',
      'romaji': 'Osusume no tokoro o oshiete moraemasu ka?',
    },
    {
      'word': 'Nearby',
      'hiragana': 'ちかく',
      'romaji': 'Chikaku',
    },
    {
      'word': 'Cheap',
      'hiragana': 'やすい',
      'romaji': 'Yasui',
    },
    {
      'word': 'In the city',
      'hiragana': 'まちのなか',
      'romaji': 'Machi no naka',
    },
    {
      'word': 'Do you have a room for tonight?',
      'hiragana': 'こんやとまれるへやはありますか？',
      'romaji': 'Konya tomareru heya wa arimasu ka?',
    },
    {
      'word': 'Single room',
      'hiragana': 'しんぐるるーむ',
      'romaji': 'Shinguru ruumu',
    },
    {
      'word': 'Twin room',
      'hiragana': 'ついんるーむ',
      'romaji': 'Tsuin ruumu',
    },
    {
      'word': 'Double room',
      'hiragana': 'だぶるるーむ',
      'romaji': 'Daburu ruumu',
    },
    {
      'word': 'Is there an en-suite bathroom?',
      'hiragana': 'へやにせんようのばするーむはありますか？',
      'romaji': 'Heya ni senyou no basuruumu wa arimasu ka?',
    },
    {
      'word': 'Is there a safe?',
      'hiragana': 'きんこはありますか？',
      'romaji': 'Kinko wa arimasu ka?',
    },
    {
      'word': 'Is there hot water?',
      'hiragana': 'おゆはでますか？',
      'romaji': 'Oyu wa demasu ka?',
    },
    {
      'word': 'Is there heating?',
      'hiragana': 'だんぼうはありますか？',
      'romaji': 'Danbou wa arimasu ka?',
    },
    {
      'word': 'When is breakfast served?',
      'hiragana': 'あさごはんはなんじからですか？',
      'romaji': 'Asagohan wa nanji kara desu ka?',
    },
    {
      'word': 'How much per night?',
      'hiragana': 'いっぱくいくらですか？',
      'romaji': 'Ippaku ikura desu ka?',
    },
    {
      'word': 'Per week',
      'hiragana': 'いっしゅうかんにつき',
      'romaji': 'Isshuukan ni tsuki',
    },
    {
      'word': 'Per month',
      'hiragana': 'いっかげつにつき',
      'romaji': 'Ikkagetsu ni tsuki',
    },
    {
      'word': 'May I see it?',
      'hiragana': 'みてもいいですか？',
      'romaji': 'Mite mo ii desu ka?',
    },
    {
      'word': "I'll take it.",
      'hiragana': 'これにします。',
      'romaji': 'Kore ni shimasu.',
    },
    {
      'word': 'I have a room reservation.',
      'hiragana': 'へやをよやくしています。',
      'romaji': 'Heya o yoyaku shite imasu.',
    },
    {
      'word': "I'd like to check in.",
      'hiragana': 'ちぇっくいんをおねがいします。',
      'romaji': 'Chekku in o onegai shimasu.',
    },
    {
      'word': "I'd like to check out.",
      'hiragana': 'ちぇっくあうとをおねがいします。',
      'romaji': 'Chekku auto o onegai shimasu.',
    },
    {
      'word': 'What time is check-out?',
      'hiragana': 'ちぇっくあうとはなんじですか？',
      'romaji': 'Chekku auto wa nanji desu ka?',
    },
    {
      'word': 'Can I leave my bags here?',
      'hiragana': 'ここににもつをあずけてもいいですか？',
      'romaji': 'Koko ni nimotsu o azukete mo ii desu ka?',
    },
    {
      'word': 'Can I change rooms?',
      'hiragana': 'へやをかえてもいいですか？',
      'romaji': 'Heya o kaete mo ii desu ka?',
    },
    {
      'word': 'Can I see a double room?',
      'hiragana': 'だぶるるーむをみせてもらえますか？',
      'romaji': 'Daburu ruumu o misete moraemasu ka?',
    },
    {
      'word': 'Is there a message for me?',
      'hiragana': 'わたしへのでんごんはありますか？',
      'romaji': 'Watashi e no dengon wa arimasu ka?',
    },
    {
      'word': 'I left my key in the room.',
      'hiragana': 'へやにかぎをわすれました。',
      'romaji': 'Heya ni kagi o wasuremashita.',
    },
    {
      'word': 'Can I exchange money here?',
      'hiragana': 'ここでりょうがえできますか？',
      'romaji': 'Koko de ryougae dekimasu ka?',
    },
    {
      'word': 'Can I use the laundry?',
      'hiragana': 'せんたくきはつかえますか？',
      'romaji': 'Sentakuki wa tsukaemasu ka?',
    },
    {
      'word': 'Can I use the kitchen?',
      'hiragana': 'だいどころはつかえますか？',
      'romaji': 'Daidokoro wa tsukaemasu ka?',
    },
    {
      'word': 'Can I use the phone?',
      'hiragana': 'でんわをつかってもいいですか？',
      'romaji': 'Denwa o tsukatte mo ii desu ka?',
    },
    {
      'word': 'Is there internet here?',
      'hiragana': 'ここでいんたーねっとはつかえますか？',
      'romaji': 'Koko de intaanetto wa tsukaemasu ka?',
    },
    {
      'word': 'Do you have Wi-Fi?',
      'hiragana': 'わいふぁいはありますか？',
      'romaji': 'Waifai wa arimasu ka?',
    },
    {
      'word': 'What is the password?',
      'hiragana': 'ぱすわーどはなんですか？',
      'romaji': 'Pasuwaado wa nan desu ka?',
    },
    {
      'word': 'Where can I rent a cell phone?',
      'hiragana': 'どこでけいたいでんわをかりられますか？',
      'romaji': 'Doko de keitai denwa o kariraremasu ka?',
    },
    {
      'word': 'Can you call a taxi for me, please?',
      'hiragana': 'たくしーをよんでもらえますか？',
      'romaji': 'Takushii o yonde moraemasu ka?',
    },
    {
      'word': 'I had a great stay, thank you.',
      'hiragana': 'とてもかいてきにすごせました。ありがとうございます。',
      'romaji': 'Totemo kaiteki ni sugosemashita. Arigatou gozaimasu.',
    },
  ];

  int currentIndex = 0;
  bool showAnswer = false;

  void flipCard() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  void nextCard() {
    setState(() {
      currentIndex = (currentIndex + 1) % cards.length;
      showAnswer = false;
    });
  }

  void previousCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + cards.length) % cards.length;
      showAnswer = false;
    });
  }

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

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'A c c o m m o d a t i o n',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const SizedBox(height: 10),

            Text(
              'Card ${currentIndex + 1} of ${cards.length}',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

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
                      color: Colors.white.withValues(
                        alpha: 0.12,
                      ),
                      borderRadius:
                      BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white.withValues(
                          alpha: 0.45,
                        ),
                        width: 1.5,
                      ),
                    ),

                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,

                      children: [
                        Icon(
                          showAnswer
                              ? Icons.check_circle_outline
                              : Icons.touch_app,
                          color: Colors.white70,
                          size: 30,
                        ),

                        const SizedBox(height: 20),

                        Text(
                          showAnswer
                              ? card['hiragana']!
                              : card['word']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                            showAnswer ? 45 : 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        if (showAnswer)
                          Text(
                            card['romaji']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                        const SizedBox(height: 25),

                        Text(
                          showAnswer
                              ? 'HIRAGANA • ROMAJI'
                              : 'TAP TO REVEAL ANSWER',
                          textAlign: TextAlign.center,
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

Widget _flashcardButton({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
}) {
  return Material(
    color: Colors.white.withValues(
      alpha: 0.10,
    ),
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
            color: Colors.white.withValues(
              alpha: 0.35,
            ),
          ),
        ),

        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.center,

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