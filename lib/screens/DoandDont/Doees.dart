//done with do's and don't not finalized the dimensions
import 'package:flutter/material.dart';
import 'package:skin_disease_detection/navigationDrawer/navigatorDrawer.dart';

class Dos extends StatelessWidget {
  const Dos({Key? key}) : super(key: key);

  static const String routeName = '/dodontpage';

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Do's and Don'ts"),
        ),
        body: SingleChildScrollView(
          child: Material(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // const Text(
                    //   "Do's and Don't",
                    //   style:
                    //       TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    const Box(
                      points: Text(
                        "1.Personal hygiene is must\n2.Keep yourself clean and dry.\n3.After Bathing Dry all the parts of the body.\n4.Use towels to keep pat dry areas with sweat\n5.After gym, workout sessions, take a shower and clean yourself thorougly.\n",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16),
                      ),
                      color: Color(0xff8CE07E),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    const Box(
                      points: Text(
                        "1.Avoid using oil in affected areas.\n2.Don’t itch or rub the affected areas.\n3.Avoid nylon and synthetic clothes as much as possible.\n4.Avoid direct contact with people.\n5.Avoid places with too much crowd or public gathering like in  swimming pools\n",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16),
                      ),
                      color: Color(0xffF47A7A),
                    ),
                  ]),
            ),
          ),
        ),
        drawer: const NavigatorDrawer(),
      ),
    );
  }
}

class Box extends StatelessWidget {
  //box class to create a container with some text on it.
  const Box({
    Key? key,
    required this.points,
    required this.color,
  }) : super(key: key);

  final Text points;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.8,
      // color: col,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(37)),
        color: color,
      ),
      child: Container(
          padding: const EdgeInsets.all(12), child: Center(child: points)),
    );
  }
}
