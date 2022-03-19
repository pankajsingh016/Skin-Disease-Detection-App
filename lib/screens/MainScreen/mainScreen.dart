import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin_disease_detection/navigationDrawer/navigatorDrawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const String routName = '/homepage';
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Skin Disease Detection"),
        ),
        body: Material(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1,
            child: Column(children: [
              SvgPicture.asset(
                "assets/images/mask.svg",
                height: MediaQuery.of(context).size.height * 0.31,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const CustomButton(
                tex: "Camera",
                col: Color(0xff9327E9),
                option: "Camera",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const CustomButton(
                tex: "Gallery",
                col: Color(0xff14BE58),
                option: "Gallery",
              ),
              SvgPicture.asset(
                "assets/images/sanitizer.svg",
                height: MediaQuery.of(context).size.height * 0.29,
              ),
            ]),
          ),
        ),
        drawer: const NavigatorDrawer(),
      ),
    );
  }

  void onPressed() {}
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.tex,
    required this.col,
    required this.option,
  }) : super(key: key);
  final String tex;
  final Color col;
  final String option;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if(option=="Camera"){
            //call for camera method to pick image
            
        }
        else if(option=="Gallery")
        {
          //call for gallery method to pick image

        }
      },
      child: Text(
        tex,
        style: const TextStyle(fontSize: 24),
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(
            MediaQuery.of(context).size.width * 0.7,
            MediaQuery.of(context).size.height * 0.1)),
        backgroundColor: MaterialStateProperty.all<Color>(col),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        )),
      ),
    );
  }
}
