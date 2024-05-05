import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final Function()? onTap;

  const SignButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 85),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(100, 41, 15, 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Text(
            "Sign in now",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
