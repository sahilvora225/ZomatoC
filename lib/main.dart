import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xffcb202d),
        accentColor: const Color(0xff2d2d2d),
        fontFamily: 'Metropolis',
      ),
      home: HomeScreen(),
    );
  }
}
// flutter build apk --split-per-abi