import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/components/my_button.dart';
import 'package:flutter_carpool_app/components/my_textfield.dart';
import 'package:flutter_carpool_app/components/secondary_text.dart';
import 'package:flutter_carpool_app/components/top_bar.dart';
import 'package:flutter_carpool_app/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopBar(
              child: Column(
                children: [
                  const Row(),
                  Image.asset('assets/images/car1.png', scale: 3),
                  const SecondaryText(
                      text: 'CarPoolin',
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                  const SizedBox(height: 10),
                  const SecondaryText(
                    text: 'Join today to unlock',
                    fontSize: 15,
                  ),
                  const SecondaryText(
                    text: '100+ travels everyday!',
                    fontSize: 15,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 35),
                  MyTextField(
                    controller: _controller,
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: _controller,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: _controller,
                    hintText: 'Name',
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: _controller,
                    hintText: 'Surname',
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: _controller,
                    hintText: 'Phone Number',
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 30),
                  MyButton(
                    text: 'Start',
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
          ],
        ),
      ),
    );
  }
}
