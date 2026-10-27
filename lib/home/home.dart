
import 'package:flutter/material.dart';
import 'package:learn_japanese/home/theme_controller.dart';

import '../sideMenu/Help.dart';
import '../sideMenu/MyProgress.dart';
import '../sideMenu/Profile.dart';
import '../sideMenu/Dictionary.dart';
import '../sideMenu/Reminder.dart';
import '../sideMenu/settings.dart';

import 'Flashcards.dart';
import 'Kanji.dart';
import 'Katakana.dart';
import 'Quiz.dart';
import 'Words.dart';
import 'Hiragana.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isMenuOpen = false;

  Widget _sideMenuItem(
      IconData icon,
      String title,
      VoidCallback onTap, {
        bool selected = false,
      }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: selected
            ? Colors.white.withOpacity(0.15)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,

      // --------------------------------------------------
      // APP BAR
      // --------------------------------------------------

      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.15),
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,

        // MENU BUTTON
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 38,
          ),
          onPressed: () {
            setState(() {
              _isMenuOpen = !_isMenuOpen;
            });
          },
        ),

        // TITLE
        title: const Text(
          'J a p a n',
          style: TextStyle(
            fontFamily: 'Arial',
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),

        // LIGHT MODE / DARK MODE TOGGLE
        actions: [
          IconButton(
            tooltip: appThemeController.isDarkMode
                ? 'Switch to Light Mode'
                : 'Switch to Dark Mode',
            icon: Icon(
              appThemeController.isDarkMode
                  ? Icons.light_mode
                  : Icons.dark_mode,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () {
              appThemeController.toggleTheme();
            },
          ),
        ],
      ),

      // --------------------------------------------------
      // BODY
      // --------------------------------------------------

      body: Stack(
        children: [
          // ------------------------------------------------
          // TEAL TRANSPARENT OVERLAY
          // ------------------------------------------------

          Positioned.fill(
            child: Container(
              color: Colors.teal.withOpacity(0.25),
            ),
          ),

          // ------------------------------------------------
          // BUTTON GRID
          // ------------------------------------------------

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                30,
                95,
                30,
                30,
              ),
              child: GridView.count(
                crossAxisCount: 2,

                // Space between columns
                crossAxisSpacing: 22,

                // Space between rows
                mainAxisSpacing: 22,

                // Makes the buttons wider than they are tall
                childAspectRatio: 1.25,

                children: [
                  // HIRAGANA
                  _menuButton(
                    'HIRAGANA',
                        () {
                      // Navigate to Hiragana screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const HiraganaScreen(),
                        ),
                      );
                    },
                  ),

                  // KANJI
                  _menuButton(
                    'KANJI',
                        () {
                      // Navigate to Kanji screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const KanjiScreen(),
                        ),
                      );
                    },
                  ),

                  // KATAKANA
                  _menuButton(
                    'KATAKANA',
                        () {
                      // Navigate to Katakana screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const KatakanaScreen(),
                        ),
                      );
                    },
                  ),

                  // FLASHCARDS
                  _menuButton(
                    'FLASHCARDS',
                        () {
                      // Navigate to Flashcards screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const FlashcardsScreen(),
                        ),
                      );
                    },
                  ),

                  // QUIZ
                  _menuButton(
                    'QUIZ',
                        () {
                      // Navigate to Quiz screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const QuizScreen(),
                        ),
                      );
                    },
                  ),

                  // WORDS
                  _menuButton(
                    'WORDS',
                        () {
                      // Navigate to Words screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const WordsScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // DARKEN THE HOME SCREEN WHEN MENU IS OPEN
          if (_isMenuOpen)
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isMenuOpen = false;
                  });
                },
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),

          // RIGHT-SLIDING HALF-SCREEN MENU
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            top: 0,
            bottom: 0,

            left: _isMenuOpen
                ? 0
                : -(MediaQuery.of(context).size.width * 0.5),

            width: MediaQuery.of(context).size.width * 0.5,

            child: IgnorePointer(
              ignoring: !_isMenuOpen,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal.shade900.withOpacity(0.95),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),

                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // MENU HEADER
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          20,
                          25,
                          12,
                          20,
                        ),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.translate,
                                color: Colors.teal,
                                size: 27,
                              ),
                            ),

                            const SizedBox(width: 10),

                            const Expanded(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Japan',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  SizedBox(height: 4),

                                  Text(
                                    'Japanese Learning',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // HEADER DIVIDER
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Divider(
                          color: Colors.white.withOpacity(0.25),
                        ),
                      ),

                      // MENU ITEMS
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.only(top: 12),
                          children: [
                            // HOME
                            _sideMenuItem(
                              Icons.home,
                              'Home',
                                  () {
                                setState(() {
                                  _isMenuOpen = false;
                                });
                              },
                              selected: true,
                            ),

                            // PROFILE
                            _sideMenuItem(
                              Icons.person_outline,
                              'Profile',
                                  () {
                                setState(() {
                                  _isMenuOpen = false;
                                });

                                // NAVIGATE TO PROFILE SCREEN
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                    const ProfileScreen(),
                                  ),
                                );
                              },
                            ),

                            // MY PROGRESS
                            _sideMenuItem(
                              Icons.bar_chart,
                              'My Progress',
                                  () {
                                setState(() {
                                  _isMenuOpen = false;
                                });

                                // NAVIGATE TO MY PROGRESS SCREEN
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                    const MyProgressScreen(),
                                  ),
                                );
                              },
                            ),

                            // DICTIONARY
                            _sideMenuItem(
                              Icons.book,
                              'Dictionary',
                                  () {
                                setState(() {
                                  _isMenuOpen = false;
                                });

                                // NAVIGATE TO DICTIONARY SCREEN
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                    const DictionaryScreen(),
                                  ),
                                );
                              },
                            ),

                            // REMINDER
                            _sideMenuItem(
                              Icons.alarm,
                              'Reminder',
                                  () {
                                setState(() {
                                  _isMenuOpen = false;
                                });

                                // NAVIGATE TO REMINDER SCREEN
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                    const ReminderScreen(),
                                  ),
                                );
                              },
                            ),

                            // HELP
                            _sideMenuItem(
                              Icons.help,
                              'Help',
                                  () {
                                setState(() {
                                  _isMenuOpen = false;
                                });

                                // NAVIGATE TO HELP SCREEN
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                    const HelpScreen(),
                                  ),
                                );
                              },
                            ),

                            // SETTINGS
                            _sideMenuItem(
                              Icons.settings,
                              'Settings',
                                  () {
                                setState(() {
                                  _isMenuOpen = false;
                                });

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                    const SettingsScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),

                      // LOGOUT
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 12,
                        ),
                        child: Column(
                          children: [
                            Divider(
                              color: Colors.white.withOpacity(0.25),
                            ),

                            // LOGOUT
                            _sideMenuItem(
                              Icons.logout,
                              'Logout',
                                  () {
                                setState(() {
                                  _isMenuOpen = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // --------------------------------------------------
  // REUSABLE MENU BUTTON
  // --------------------------------------------------

  Widget _menuButton(
      String title,
      VoidCallback onPressed,
      ) {
    return Container(
      decoration: BoxDecoration(
        // Transparent button
        color: Colors.white.withOpacity(0.05),

        // Thin white border
        border: Border.all(
          color: Colors.white.withOpacity(0.45),
          width: 1.5,
        ),

        // Rounded corners
        borderRadius: BorderRadius.circular(25),
      ),

      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: onPressed,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Arial',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
