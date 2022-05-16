import 'package:flutter/material.dart';
import 'package:skin_disease_detection/navigationDrawer/navigatorDrawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  static const String routeName = '/aboutcreators';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("About Creators"),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 0),
            child: Text(
              "Creators Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              " 1. [20BCS6668] Pankaj Singh Kanyal \n 2. [20BCS6700] Karuna Rani \n",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      )),
      drawer: const NavigatorDrawer(),
    ));
  }
}
