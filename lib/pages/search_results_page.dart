import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/components/result_tile.dart';
import 'package:flutter_carpool_app/components/secondary_text.dart';
import 'package:flutter_carpool_app/components/top_bar.dart';
import 'package:flutter_carpool_app/pages/car_booking_page.dart';

class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    SecondaryText(
                      text: 'Ride from ',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    SecondaryText(
                      text: 'Brussels',
                      fontSize: 24,
                      color: Color.fromARGB(255, 194, 236, 245),
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SecondaryText(
                      text: 'to ',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    SecondaryText(
                      text: 'Ghent',
                      fontSize: 24,
                      color: Color.fromARGB(255, 194, 236, 245),
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 84, 106, 123),
            child: ResultTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CarBookingPage(),
                ),
              ),
            ),
          ),
          ResultTile(
            color: const Color.fromARGB(255, 84, 106, 123),
            secondColor: const Color.fromARGB(255, 133, 216, 234),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CarBookingPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
