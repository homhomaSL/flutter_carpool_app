import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/components/primary_text.dart';
import 'package:flutter_carpool_app/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/car.png'),
            const PrimaryText(
                text: 'CarPoolin', fontSize: 40, fontWeight: FontWeight.w600),
            const PrimaryText(text: 'Drive & Save Money', fontSize: 20),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 3,
                          color: Color.fromARGB(60, 3, 3, 3),
                          spreadRadius: 0),
                    ],
                    color: const Color.fromARGB(255, 84, 106, 123),
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(Icons.arrow_forward_rounded,
                    color: Colors.white, size: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
