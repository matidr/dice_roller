import 'package:flutter/material.dart';

class Header1 extends StatelessWidget {
  const Header1(this.text,{super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}
