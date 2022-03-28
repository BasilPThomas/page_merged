import 'package:flutter/material.dart';

class Earning extends StatelessWidget {
  const Earning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color(0xfff3f3f4)],
            stops: [0.5, 0.5],
          ),
        )
    );
  }
}
