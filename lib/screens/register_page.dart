import 'package:flutter/material.dart';
import 'package:talapets/buttons/my_textField.dart';
import 'package:talapets/buttons/sign_in_button.dart';
import 'package:talapets/buttons/sign_up_button.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  VoidCallback showLoginPage;
  RegisterPage({super.key, required this.showLoginPage});

  final usernamecontroller = TextEditingController();

  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  final confPasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back75.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                    width: 180,
                    height: 180,
                  ),
                ),
                const Text(
                  "Welcome to our Application",
                  style: TextStyle(
                    color: Color(0xff632B00),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MyTextField(
                  controller: usernamecontroller,
                  hintText: 'Username',
                  obsecureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: emailcontroller,
                  hintText: 'Email',
                  obsecureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: passwordcontroller,
                  hintText: 'password',
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: confPasscontroller,
                  hintText: 'Confirm password',
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                SignUpButton(
                  onTap: showLoginPage,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Color(0xff632B00),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Color(0xff632B00),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Color(0xff632B00),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SignButton(
                  onTap: showLoginPage,
                ),
              ]),
            ),
          ),
        ));
  }
}
