import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/components/my_button.dart';
import 'package:flutter_carpool_app/painter/my_painter.dart';
import 'package:flutter_carpool_app/components/my_togglebuttons.dart';
import 'package:flutter_carpool_app/components/primary_text.dart';
import 'package:flutter_carpool_app/components/secondary_text.dart';
import 'package:flutter_carpool_app/components/top_bar.dart';
import 'package:flutter_carpool_app/pages/search_results_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected = [true, false, false];

  @override
  void initState() {
    isSelected = [true, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(
              child: Column(
                children: [
                  const Row(
                    children: [
                      SecondaryText(
                        text: 'Where are\nyou going?',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      CustomPaint(
                        painter: MyPainter(),
                        size: const Size(30, 100),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SecondaryText(
                            text: 'From',
                            fontSize: 16,
                            color: Color.fromARGB(255, 194, 236, 245),
                          ),
                          SecondaryText(text: 'Brussels', fontSize: 16),
                          SizedBox(
                            width: 200,
                            height: 15,
                            child: Divider(
                              color: Color.fromARGB(255, 194, 236, 245),
                            ),
                          ),
                          SecondaryText(
                            text: 'To',
                            fontSize: 16,
                            color: Color.fromARGB(255, 194, 236, 245),
                          ),
                          SecondaryText(text: 'Ghent', fontSize: 16),
                        ],
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    blurRadius: 3,
                                    color: Color.fromARGB(60, 3, 3, 3),
                                    spreadRadius: 0),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Image.asset(
                            'assets/images/loop.png',
                            scale: 25,
                            color: const Color.fromARGB(255, 84, 106, 123),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PrimaryText(text: 'Date', fontSize: 24),
                  Row(
                    children: [
                      const SecondaryText(
                        text: 'Today',
                        fontSize: 16,
                        color: Color.fromARGB(255, 133, 216, 234),
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(width: 15),
                      const SecondaryText(
                        text: 'Tomorrow',
                        fontSize: 16,
                        color: Color.fromARGB(255, 196, 196, 196),
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(width: 15),
                      const SecondaryText(
                        text: 'Other Date',
                        fontSize: 16,
                        color: Color.fromARGB(255, 196, 196, 196),
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(width: 15),
                      Image.asset('assets/images/Iconcalendar.png', scale: 4)
                    ],
                  ),
                  const PrimaryText(text: 'Passengers', fontSize: 24),
                  const SizedBox(height: 20),
                  const MyToggleButtons(),
                  const SizedBox(height: 30),
                  MyButton(
                    text: 'Search',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchResultsPage(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
