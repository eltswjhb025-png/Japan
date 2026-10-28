
import 'package:flutter/material.dart';
import 'home/home.dart';
import 'package:learn_japanese/home/theme_controller.dart';

void main() {
  runApp(const JapanApp());
}

class JapanApp extends StatelessWidget {
  const JapanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: appThemeController,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Japan',

          // LIGHT THEME
          theme: ThemeData(
            brightness: Brightness.light,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: Brightness.light,
            ),
            scaffoldBackgroundColor: Colors.transparent,
          ),

          // DARK THEME
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: Brightness.dark,
            ),
            scaffoldBackgroundColor: Colors.transparent,
          ),

          // SELECTED THEME
          themeMode: appThemeController.themeMode,

          // BACKGROUND IMAGE FOR EACH THEME
          builder: (context, child) {
            final isDark = appThemeController.isDarkMode;

            return Stack(
              fit: StackFit.expand,
              children: [
                // DARK MODE: dark_theme
                // LIGHT MODE: Kimono background
                Image.asset(
                  isDark
                      ? 'assets/images/dark_theme.png'
                      : 'assets/images/kimono_background.png',
                  fit: BoxFit.cover,
                ),

                // Background overlay
                Container(
                  color: isDark
                      ? Colors.black.withValues(alpha: 0.40)
                      : Colors.white.withValues(alpha: 0.10),
                ),

                // Teal aesthetic overlay
                Container(
                  color: Colors.teal.withValues(alpha: 0.12),
                ),

                // App screens appear above the background
                child ?? const SizedBox.shrink(),
              ],
            );
          },

          // HOME SCREEN
          home: const HomeScreen(),
        );
      },
    );
  }
}
