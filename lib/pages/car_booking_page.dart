import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/components/my_button.dart';
import 'package:flutter_carpool_app/components/primary_text.dart';
import 'package:flutter_carpool_app/components/secondary_text.dart';
import 'package:flutter_carpool_app/components/top_bar.dart';
import 'package:flutter_carpool_app/pages/confirmation_page.dart';
import 'package:flutter_carpool_app/pages/driver_profile_page.dart';
import 'package:flutter_carpool_app/painter/my_painter.dart';

class CarBookingPage extends StatelessWidget {
  const CarBookingPage({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const PrimaryText(
                      text: '21 €',
                      fontSize: 24,
                      color: Color.fromARGB(255, 84, 106, 123),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomPaint(
                      painter: MyPainter(),
                      size: const Size(30, 100),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SecondaryText(
                              text: '16:30',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(width: 8),
                            SecondaryText(
                              text: 'Brussels',
                              fontSize: 18,
                              color: Color.fromARGB(255, 194, 236, 245),
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SecondaryText(text: 'Pick up at ', fontSize: 14),
                            SecondaryText(
                                text: 'Brussel-Centraal Station', fontSize: 14)
                          ],
                        ),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            SecondaryText(
                              text: '17:20',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(width: 8),
                            SecondaryText(
                              text: 'Ghent',
                              fontSize: 18,
                              color: Color.fromARGB(255, 194, 236, 245),
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SecondaryText(text: 'Drop off at ', fontSize: 14),
                            SecondaryText(
                                text: 'Gent-Sint-Pieters', fontSize: 14)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DriverProfilePage(),
                    ),
                  ),
                  child: const Row(
                    children: [
                      CircleAvatar(radius: 30, child: Icon(Icons.person)),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(text: 'Stephan', fontSize: 20),
                          Row(
                            children: [
                              SecondaryText(
                                text: '4.99',
                                fontSize: 14,
                                color: Color.fromARGB(255, 196, 196, 196),
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: Color.fromARGB(255, 255, 193, 59),
                              ),
                              SecondaryText(
                                text: '(347 reviews)',
                                fontSize: 14,
                                color: Color.fromARGB(255, 196, 196, 196),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  children: [
                    Image.asset('assets/images/Iconcar.png', scale: 4),
                    const SizedBox(width: 35),
                    const PrimaryText(
                      text: 'Big White Car',
                      fontSize: 16,
                      color: Color.fromARGB(255, 13, 31, 45),
                    )
                  ],
                ),
                const SizedBox(height: 47),
                MyButton(
                  text: 'Order Now',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConfirmationPage(),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SecondaryText(
                    text:
                        'By clicking on “Order Now” button I agree with Terms and Policies of using Carpoolin',
                    fontSize: 12,
                    color: Color.fromARGB(255, 196, 196, 196),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
