import 'package:flutter/material.dart';

class MyToggleButtons extends StatefulWidget {
  const MyToggleButtons({super.key});

  @override
  State<MyToggleButtons> createState() => _MyToggleButtonsState();
}

class _MyToggleButtonsState extends State<MyToggleButtons> {
  late List<bool> isSelected;
  bool selectedColor = false;
  @override
  void initState() {
    isSelected = [true, false, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ToggleButtons(
          fillColor: Colors.white,
          renderBorder: false,
          isSelected: isSelected,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 48,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: const Color.fromARGB(255, 196, 196, 196))),
              child: const Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 196, 196, 196),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 48,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: const Color.fromARGB(255, 196, 196, 196))),
              child: const Text(
                '2',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 196, 196, 196),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 48,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: const Color.fromARGB(255, 196, 196, 196))),
              child: const Text(
                '3',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 196, 196, 196),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 48,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: const Color.fromARGB(255, 196, 196, 196))),
              child: const Text(
                '4',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 196, 196, 196),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
          onPressed: (index) {
            setState(() {
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = i == index;
              }
            });
          },
        )
      ],
    );
  }
}
