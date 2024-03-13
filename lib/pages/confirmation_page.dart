import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/components/my_button.dart';
import 'package:flutter_carpool_app/components/primary_text.dart';
import 'package:flutter_carpool_app/pages/home_page.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Column(
                children: [
                  Image.asset(
                    'assets/images/checkcircle.png',
                    scale: 3,
                  ),
                  const SizedBox(height: 30),
                  const PrimaryText(
                    text: 'Your order has been confirmed\nby the driver!',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const Spacer(),
              MyButton(
                text: 'Go Home',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
