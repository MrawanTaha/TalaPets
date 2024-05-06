import 'package:flutter/material.dart';
import 'package:talapets/buttons/my_button.dart';
import 'package:talapets/buttons/my_reg_button.dart';
import 'package:talapets/buttons/my_textField.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  VoidCallback showRegisterPage;
  LoginPage({super.key, required this.showRegisterPage});
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void signUserIn() {}

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
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(50),
                    child: Image(
                      image: AssetImage(
                        "assets/images/logo.png",
                      ),
                      width: 180,
                      height: 180,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Welcome back you have been missed !",
                    style: TextStyle(
                      color: Color(0xff632B00),
                      fontSize: 16,
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
                    controller: passwordcontroller,
                    hintText: 'password',
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 45.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "forgot password?",
                          style: TextStyle(
                            color: Color(0xff632B00),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MyButton(
                    onTap: signUserIn,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                            'Don\'t have an account?',
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
                  MyRegButton(
                    onTap: showRegisterPage,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
