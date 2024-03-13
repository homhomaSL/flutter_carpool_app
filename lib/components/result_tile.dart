import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/components/primary_text.dart';
import 'package:flutter_carpool_app/components/secondary_text.dart';
import 'package:flutter_carpool_app/painter/my_tile_painter.dart';

class ResultTile extends StatelessWidget {
  void Function()? onTap;
  final Color? color;
  final Color? secondColor;

  ResultTile({
    super.key,
    this.color = const Color.fromARGB(255, 255, 255, 255),
    required this.onTap,
    this.secondColor = const Color.fromARGB(255, 13, 31, 45),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        shadowColor: Colors.transparent,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        height: 108,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SecondaryText(
                              text: '10:00',
                              fontSize: 16,
                              color: Color.fromARGB(255, 84, 106, 123),
                            ),
                            SecondaryText(
                              text: '11:00',
                              fontSize: 16,
                              color: Color.fromARGB(255, 84, 106, 123),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      CustomPaint(
                        painter: MyTilePainter(),
                        size: const Size(30, 100),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SecondaryText(
                            text: 'From',
                            fontSize: 16,
                            color: Color.fromARGB(255, 169, 180, 189),
                          ),
                          SecondaryText(
                              text: 'Brussels',
                              fontSize: 16,
                              color: Color.fromARGB(255, 84, 106, 123)),
                          SizedBox(height: 15),
                          SecondaryText(
                            text: 'To',
                            fontSize: 16,
                            color: Color.fromARGB(255, 169, 180, 189),
                          ),
                          SecondaryText(
                            text: 'Ghent',
                            fontSize: 16,
                            color: Color.fromARGB(255, 84, 106, 123),
                          ),
                        ],
                      ),
                    ],
                  ),
                  PrimaryText(
                    text: '25 €',
                    fontSize: 20,
                    color: secondColor,
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const CircleAvatar(child: Icon(Icons.person)),
                  const SizedBox(width: 24),
                  PrimaryText(
                    text: 'Mark',
                    fontSize: 16,
                    color: secondColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
