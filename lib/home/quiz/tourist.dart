import 'dart:math';
import 'package:flutter/material.dart';

class TouristScreen extends StatefulWidget {
  const TouristScreen({super.key});

  @override
  State<TouristScreen> createState() => _TouristScreenState();
}

class _TouristScreenState extends State<TouristScreen> {
  // TOURIST ATTRACTIONS
  final List<Map<String, String>> touristAttractions = [
    {
      'place': 'Mount Fuji',
      'japanese': 'ふじさん',
      'romaji': 'Fujisan'
    },
    {
      'place': 'Fushimi Inari Shrine',
      'japanese': 'ふしみいなりたいしゃ',
      'romaji': 'Fushimi Inari Taisha'
    },
    {
      'place': 'Kiyomizu-dera Temple',
      'japanese': 'きよみずでら',
      'romaji': 'Kiyomizu-dera'
    },
    {
      'place': 'Senso-ji Temple',
      'japanese': 'せんそうじ',
      'romaji': 'Sensouji'
    },
    {
      'place': 'Tokyo Skytree',
      'japanese': 'とうきょうすかいつりー',
      'romaji': 'Toukyou Sukaitsurii'
    },
    {
      'place': 'Shibuya Crossing',
      'japanese': 'しぶやすくらんぶるこうさてん',
      'romaji': 'Shibuya Sukuranburu Kousaten'
    },
    {
      'place': 'Arashiyama Bamboo Grove',
      'japanese': 'あらしやまちくりん',
      'romaji': 'Arashiyama Chikurin'
    },
    {
      'place': 'Osaka Castle',
      'japanese': 'おおさかじょう',
      'romaji': 'Oosaka-jou'
    },
    {
      'place': 'Nara Park',
      'japanese': 'ならこうえん',
      'romaji': 'Nara Kouen'
    },
    {
      'place': 'Itsukushima Shrine',
      'japanese': 'いつくしまじんじゃ',
      'romaji': 'Itsukushima Jinja'
    },
    {
      'place': 'Hiroshima Peace Memorial Park',
      'japanese': 'ひろしまへいわきねんこうえん',
      'romaji': 'Hiroshima Heiwa Kinen Kouen'
    },
    {
      'place': 'Tokyo Disneyland',
      'japanese': 'とうきょうでぃずにーらんど',
      'romaji': 'Toukyou Dizunii Rando'
    },
    {
      'place': 'Tokyo DisneySea',
      'japanese': 'とうきょうでぃずにーしー',
      'romaji': 'Toukyou Dizunii Shii'
    },
    {
      'place': 'Meiji Shrine',
      'japanese': 'めいじじんぐう',
      'romaji': 'Meiji Jinguu'
    },
    {
      'place': 'Imperial Palace',
      'japanese': 'こうきょ',
      'romaji': 'Koukyo'
    },
    {
      'place': 'Ginkaku-ji Temple',
      'japanese': 'ぎんかくじ',
      'romaji': 'Ginkakuji'
    },
    {
      'place': 'Kinkaku-ji Temple',
      'japanese': 'きんかくじ',
      'romaji': 'Kinkakuji'
    },
    {
      'place': 'Nijo Castle',
      'japanese': 'にじょうじょう',
      'romaji': 'Nijoujou'
    },
    {
      'place': 'Todaiji Temple',
      'japanese': 'とうだいじ',
      'romaji': 'Toudaiji'
    },
    {
      'place': 'Himeji Castle',
      'japanese': 'ひめじじょう',
      'romaji': 'Himeji-jou'
    },
    {
      'place': 'Dotonbori',
      'japanese': 'どうとんぼり',
      'romaji': 'Doutonbori'
    },
    {
      'place': 'Universal Studios Japan',
      'japanese': 'ゆにばーさるすたじおじゃぱん',
      'romaji': 'Yunibaasaru Sutajio Japan'
    },
    {
      'place': 'Shinjuku',
      'japanese': 'しんじゅく',
      'romaji': 'Shinjuku'
    },
    {
      'place': 'Akihabara',
      'japanese': 'あきはばら',
      'romaji': 'Akihabara'
    },
    {
      'place': 'Odaiba',
      'japanese': 'おだいば',
      'romaji': 'Odaiba'
    },
    {
      'place': 'Nikko Toshogu Shrine',
      'japanese': 'にっこうとうしょうぐう',
      'romaji': 'Nikkou Toushouguu'
    },
    {
      'place': 'Kamikochi',
      'japanese': 'かみこうち',
      'romaji': 'Kamikouchi'
    },
    {
      'place': 'Okinawa Churaumi Aquarium',
      'japanese': 'おきなわちゅらうみすいぞくかん',
      'romaji': 'Okinawa Churaumi Suizokukan'
    },
    {
      'place': 'Sapporo Clock Tower',
      'japanese': 'さっぽろとけいだい',
      'romaji': 'Sapporo Tokeidai'
    },
    {
      'place': 'Shirakawa-go',
      'japanese': 'しらかわごう',
      'romaji': 'Shirakawagou'
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
      currentIndex =
          (currentIndex + 1) % touristAttractions.length;
      showAnswer = false;
    });
  }

  // PREVIOUS CARD
  void previousCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + touristAttractions.length) %
              touristAttractions.length;
      showAnswer = false;
    });
  }

  // SHUFFLE CARDS
  void shuffleCards() {
    setState(() {
      touristAttractions.shuffle(Random());
      currentIndex = 0;
      showAnswer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final card = touristAttractions[currentIndex];

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
          'T o u r i s t  A t t r a c t i o n s',
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
              'Card ${currentIndex + 1} of ${touristAttractions.length}',
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (!showAnswer) ...[
                            // FRONT OF CARD
                            const Icon(
                              Icons.touch_app,
                              color: Colors.white,
                              size: 38,
                            ),

                            const SizedBox(height: 25),

                            Text(
                              card['place']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 25),

                            const Text(
                              'TAP TO REVEAL ANSWER',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                                letterSpacing: 2,
                              ),
                            ),
                          ] else ...[
                            // BACK OF CARD
                            const Icon(
                              Icons.check_circle_outline,
                              color: Colors.white,
                              size: 38,
                            ),

                            const SizedBox(height: 25),

                            Text(
                              card['japanese']!,
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

                            const SizedBox(height: 25),

                            const Text(
                              'JAPANESE & ROMAJI',
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