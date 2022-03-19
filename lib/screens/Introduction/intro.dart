import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin_disease_detection/navigationDrawer/navigatorDrawer.dart';

import '../../routes/pageRoute.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  static const String routeName = '/intropage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Material(
            child: Background(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double
                        .infinity, //MediaQuery.of(context).size.height * 0.4,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Image.asset("assets/images/introimage.jpg"),
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.height * 0.4,
                      // height: MediaQuery.of(context).size.height *0.1,
                      child: const Text(
                        "\nHi, Welcome to Skin Disease Detection App.\n\nWe care for your skin, and for that only. Our team has developed this application to resolve the problem of most of the people out there.",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward),
          onPressed: () =>
              Navigator.pushReplacementNamed(context, PageRoutes.home),
        ),
        drawer: const NavigatorDrawer(),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: size.height,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset("assets/images/Eclipse1.svg"),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset("assets/images/Eclipse2.svg"),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
