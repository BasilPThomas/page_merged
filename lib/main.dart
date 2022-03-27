import 'package:flutter/material.dart';
import 'nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Page Merge',
      debugShowCheckedModeBanner: false,
      home:NavigationBarPage(),
    );
  }
}


