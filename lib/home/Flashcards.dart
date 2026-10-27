
import 'package:flutter/material.dart';
import 'flashcards/HiraganaFlashcards.dart';
import 'flashcards/KanjiFlashcards.dart';
import 'flashcards/KatakanaFlashcards.dart';

class FlashcardsScreen extends StatelessWidget {
  const FlashcardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          'F l a s h c a r d s',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Arial',
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),

      // BODY
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DESCRIPTION
            const Text(
              'Choose what you want to practise',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'Arial',
              ),
            ),

            const SizedBox(height: 30),

            // HIRAGANA FLASHCARDS
            _flashcardMenuButton(
              context,
              title: 'H I R A G A N A',
              subtitle: 'Practise Japanese basic characters',
              icon: Icons.style,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const HiraganaFlashcardsScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 18),

            // KANJI FLASHCARDS
            _flashcardMenuButton(
              context,
              title: 'K A N J I',
              subtitle: 'Practise characters and meanings',
              icon: Icons.menu_book,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const KanjiFlashcardsScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 18),

            // KATAKANA FLASHCARDS
            _flashcardMenuButton(
              context,
              title: 'K A T A K A N A',
              subtitle: 'Practise Japanese Katakana',
              icon: Icons.flip,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const KatakanaFlashcardsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // FLASHCARD MENU BUTTON
  Widget _flashcardMenuButton(
      BuildContext context, {
        required String title,
        required String subtitle,
        required IconData icon,
        required VoidCallback onTap,
      }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.25),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withOpacity(0.35),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                // ICON
                Icon(
                  icon,
                  color: Colors.white,
                  size: 35,
                ),

                const SizedBox(width: 18),

                // TITLE AND DESCRIPTION
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arial',
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontFamily: 'Arial',
                        ),
                      ),
                    ],
                  ),
                ),

                // ARROW
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
