import 'package:flutter/material.dart';
import 'package:skin_disease_detection/routes/pageRoute.dart';
import 'package:skin_disease_detection/screens/DoandDont/Doees.dart';
import 'package:skin_disease_detection/screens/Introduction/intro.dart';
import 'package:skin_disease_detection/screens/MainScreen/mainScreen.dart';
import 'screens/Introduction/intro.dart';
import 'screens/DoandDont/Doees.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent[400],
      ),
      home: const Intro(),
      routes: {
        PageRoutes.home: (context) => const MainScreen(),
        PageRoutes.dodont: (context) => const Dos(),
        PageRoutes.intro: (context) => const Intro(),
      },
    );
  }
}


/*
Important link : https://www.thirdrocktechkno.com/blog/how-to-implement-navigation-drawer-in-flutter/

*/