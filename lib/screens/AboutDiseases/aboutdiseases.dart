import 'package:flutter/material.dart';
import 'package:skin_disease_detection/navigationDrawer/navigatorDrawer.dart';
import 'package:skin_disease_detection/screens/AboutDiseases/Blister.dart';
import 'package:skin_disease_detection/screens/AboutDiseases/acne.dart';
import 'package:skin_disease_detection/screens/AboutDiseases/chickenpox.dart';
import 'package:skin_disease_detection/screens/AboutDiseases/eczema.dart';
import 'package:skin_disease_detection/screens/AboutDiseases/healthyskin.dart';
import 'package:skin_disease_detection/screens/AboutDiseases/melanoma.dart';
import 'package:skin_disease_detection/screens/AboutDiseases/psoriasis.dart';

class AboutDisease extends StatefulWidget {
  const AboutDisease({Key? key}) : super(key: key);

  static const String routeName = '/aboutdisease';
  @override
  State<AboutDisease> createState() => _AboutDiseaseState();
}

class _AboutDiseaseState extends State<AboutDisease> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("About Diseases")),
        body: SingleChildScrollView(
          child: Material(
            child: Column(children: [
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Blisters"),
                subtitle: const Text("one"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Blister())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Acne"),
                subtitle: const Text("two"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Acne())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Chickenpox"),
                subtitle: const Text("three"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Chickenpox())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Eczema"),
                subtitle: const Text("four"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Eczema())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Melanoma"),
                subtitle: const Text("five"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Melanoma())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Psoriasis"),
                subtitle: const Text("six"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Psoriasis())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Healthy Skin"),
                subtitle: const Text("Seven"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Healthy())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ]),
          ),
        ),
        drawer: const NavigatorDrawer(),
      ),
    );
  }
}
