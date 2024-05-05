import 'package:flutter/material.dart';
import 'package:talapets/screens/authentication.dart';

void main() {
  runApp(const TalaPets());
}

class TalaPets extends StatefulWidget {
  const TalaPets({super.key});

  @override
  State<TalaPets> createState() => _TalaPetsState();
}

class _TalaPetsState extends State<TalaPets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
