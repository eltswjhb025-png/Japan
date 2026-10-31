
import 'package:flutter/material.dart';

import 'quiz/accommodation.dart';
import 'quiz/cities.dart';
import 'quiz/colours.dart';
import 'quiz/countries.dart';
import 'quiz/date.dart';
import 'quiz/dating.dart';
import 'quiz/directions.dart';
import 'quiz/eating_out.dart';
import 'quiz/emergency.dart';
import 'quiz/family.dart';
import 'quiz/feeling_sick.dart';
import 'quiz/food.dart';
import 'quiz/general_conversation.dart';
import 'quiz/greetings.dart';
import 'quiz/numbers.dart';
import 'quiz/shopping.dart';
import 'quiz/tourist.dart';
import 'quiz/transportation.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        title: const Text(
          'Q u i z',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.5,

        children: [
          _quizButton(
            context,
            'Accommodation',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const AccommodationScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Cities',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CitiesScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Colours',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ColoursScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Countries',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CountriesScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Date & Time',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DateScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Dating',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DatingScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Directions & Places',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DirectionsScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Eating Out',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EatingOutScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Emergency',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EmergencyScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Family',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FamilyScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Feeling Sick',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FeelingSickScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Food',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FoodScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'General Conversation',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GeneralScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Greetings',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GreetingsScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Numbers',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Shopping',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShoppingScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Tourist Attractions',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TouristScreen(),
                ),
              );
            },
          ),

          _quizButton(
            context,
            'Transportation',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const TransportationScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // REUSABLE QUIZ CATEGORY BUTTON
  Widget _quizButton(
      BuildContext context,
      String title,
      VoidCallback onTap,
      ) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),

        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(12),

          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.3),
              width: 1.2,
            ),
          ),

          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
