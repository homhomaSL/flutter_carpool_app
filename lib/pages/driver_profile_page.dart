import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/components/decoration_container.dart';
import 'package:flutter_carpool_app/components/primary_text.dart';
import 'package:flutter_carpool_app/components/secondary_text.dart';
import 'package:flutter_carpool_app/components/top_bar.dart';

class DriverProfilePage extends StatelessWidget {
  const DriverProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(right: 32.0),
                          child: Column(
                            children: [
                              CircleAvatar(radius: 35),
                              SizedBox(height: 20),
                              SecondaryText(
                                text: 'Stephan',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              )
                            ],
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 133, 216, 234),
            child: const DecorationContainer(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryText(text: 'Level:', fontSize: 18),
                      PrimaryText(text: 'Rating:', fontSize: 18),
                      PrimaryText(text: 'Reviews:', fontSize: 18),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SecondaryText(
                        text: 'Pro',
                        fontSize: 18,
                        color: Color.fromARGB(255, 196, 196, 196),
                      ),
                      Row(
                        children: [
                          SecondaryText(
                            text: '4.99',
                            fontSize: 18,
                            color: Color.fromARGB(255, 196, 196, 196),
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color.fromARGB(255, 255, 193, 59),
                          ),
                        ],
                      ),
                      SecondaryText(
                        text: '347',
                        fontSize: 18,
                        color: Color.fromARGB(255, 196, 196, 196),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          DecorationContainer(
            color: const Color.fromARGB(255, 133, 216, 234),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/checkcirclewhite.png',
                      scale: 4,
                    ),
                    const SizedBox(width: 15),
                    const SecondaryText(text: 'ID verified', fontSize: 18)
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/checkcirclewhite.png',
                      scale: 4,
                    ),
                    const SizedBox(width: 15),
                    const SecondaryText(
                        text: 'Driving license uploaded', fontSize: 18)
                  ],
                )
              ],
            ),
          ),
          const DecorationContainer(
            child: Column(
              children: [
                Row(
                  children: [
                    PrimaryText(text: 'Meet Stephan!', fontSize: 18),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: SecondaryText(
                        text:
                            'Hello! My name is Stephan, I drive for work to Ghent weekly so I’m happy for anyone to join me.\n\nI like music and Chinese food. I’m talkative and love meeting new people.',
                        fontSize: 16,
                        color: Color.fromARGB(255, 196, 196, 196),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
