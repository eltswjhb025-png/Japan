import 'package:flutter/material.dart';
import 'package:learn_japanese/home/words/accommodation.dart';
import 'package:learn_japanese/home/words/cities.dart';
import 'package:learn_japanese/home/words/colours.dart';
import 'package:learn_japanese/home/words/countries.dart';
import 'package:learn_japanese/home/words/date.dart';
import 'package:learn_japanese/home/words/dating.dart';
import 'package:learn_japanese/home/words/directions.dart';
import 'package:learn_japanese/home/words/eating_out.dart';
import 'package:learn_japanese/home/words/emergency.dart';
import 'package:learn_japanese/home/words/family.dart';
import 'package:learn_japanese/home/words/feeling_sick.dart';
import 'package:learn_japanese/home/words/food.dart';
import 'package:learn_japanese/home/words/general_conversation.dart';
import 'package:learn_japanese/home/words/Greetings.dart';
import 'package:learn_japanese/home/words/numbers.dart';
import 'package:learn_japanese/home/words/shopping.dart';
import 'package:learn_japanese/home/words/tourist.dart';
import 'package:learn_japanese/home/words/transportation.dart';

class WordsScreen extends StatelessWidget{
  const WordsScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.transparent,

      //APPBAR
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'J a p a n e s e',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Arial',
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(context);
          }
        ),
      ),

      // BODY
      body: Stack(
        children: [
          // ------------------------------------------------
          // TEAL TRANSPARENT OVERLAY
          // ------------------------------------------------
          Positioned.fill(
            child: Container(
              color: Colors.teal.withValues(alpha: 0.25),
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
                // Two buttons per row
                crossAxisCount: 2,

                // Space between columns
                crossAxisSpacing: 22,

                // Space between rows
                mainAxisSpacing: 22,

                // Makes the buttons wider than they are tall
                childAspectRatio: 1.25,

                // All buttons are direct children of the grid
                children: [
                  // GREETINGS
                  _menuButton(
                    context,
                    'Greetings',
                    Icons.handshake,
                    const GreetingsScreen(),
                  ),

                  // GENERAL CONVERSATION
                  _menuButton(
                    context,
                    'General Conversation',
                    Icons.wechat_outlined,
                    const GeneralScreen(),
                  ),

                  // EMERGENCY
                  _menuButton(
                    context,
                    'Emergency',
                    Icons.medical_services_sharp,
                    const EmergencyScreen(),
                  ),

                  // NUMBERS
                  _menuButton(
                    context,
                    'Numbers',
                    Icons.numbers,
                    const NumbersScreen(),
                  ),

                  // COLOURS
                  _menuButton(
                    context,
                    'Colours',
                    Icons.color_lens,
                    const ColoursScreen(),
                  ),

                  // TOURIST ATTRACTIONS
                  _menuButton(
                    context,
                    'Tourist Attractions',
                    Icons.tour,
                    const TouristScreen(),
                  ),

                  // DIRECTIONS & PLACES
                  _menuButton(
                    context,
                    'Directions & Places',
                    Icons.directions,
                    const DirectionsScreen(),
                  ),

                  // EATING OUT
                  _menuButton(
                    context,
                    'Eating Out',
                    Icons.restaurant,
                    const EatingOutScreen(),
                  ),

                  // SHOPPING
                  _menuButton(
                    context,
                    'Shopping',
                    Icons.shopping_bag,
                    const ShoppingScreen(),
                  ),

                  // TIME AND DATE
                  _menuButton(
                    context,
                    'Date & Time',
                    Icons.date_range,
                    const DateScreen(),
                  ),

                  // FAMILY
                  _menuButton(
                    context,
                    'Family',
                    Icons.family_restroom,
                    const FamilyScreen(),
                  ),

                  // ACCOMMODATION
                  _menuButton(
                    context,
                    'Accommodation',
                    Icons.hotel,
                    const AccommodationScreen(),
                  ),

                  // FOOD
                  _menuButton(
                    context,
                    'Food',
                    Icons.fastfood,
                    const FoodScreen(),
                  ),

                  // DATING
                  _menuButton(
                    context,
                    'Dating',
                    Icons.people,
                    const DatingScreen(),
                  ),

                  // CITIES & PROVINCES
                  _menuButton(
                    context,
                    'Cities & Provinces',
                    Icons.location_city,
                    const CitiesScreen(),
                  ),

                  // COUNTRIES / REGIONS
                  _menuButton(
                    context,
                    'Countries/Regions',
                    Icons.map,
                    const CountriesScreen(),
                  ),

                  // TRANSPORTATION
                  _menuButton(
                    context,
                    'Transportation',
                    Icons.emoji_transportation,
                    const TransportationScreen(),
                  ),

                  // FEELING SICK
                  _menuButton(
                    context,
                    'Feeling Sick',
                    Icons.sick,
                    const FeelingSickScreen(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ------------------------------------------------
// REUSABLE MENU BUTTON
// ------------------------------------------------
  Widget _menuButton(
      BuildContext context,
      String label,
      IconData icon,
      Widget screen,
      ) {
    return Container(
      decoration: BoxDecoration(
        // Transparent button
        color: Colors.white.withValues(alpha: 0.05),

        // Thin white border
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.45),
          width: 1.5,
        ),

        // Rounded corners
        borderRadius: BorderRadius.circular(25),
      ),

      child: TextButton.icon(
        // Navigate to the selected screen
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            ),
          );
        },

        // Button icon
        icon: Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),

        // Button label
        label: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),

        // Keep the button background transparent
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}