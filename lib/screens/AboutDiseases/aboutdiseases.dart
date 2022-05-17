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
                subtitle: const Text("A blister is a pocket of fluid...."),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Blister())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Acne"),
                subtitle:
                    const Text("Acne is a very common skin condition ...."),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Acne())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Chickenpox"),
                subtitle:
                    const Text("Chickenpox is an infection that causes...."),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Chickenpox())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Eczema"),
                subtitle: const Text("Eczema is a group of conditions ....."),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Eczema())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Melanoma"),
                subtitle: const Text("Melanoma which means black tumor ....."),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Melanoma())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Psoriasis"),
                subtitle: const Text("Psoriasis is a sking disorder ....."),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Psoriasis())),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.assignment_rounded),
                title: const Text("Healthy Skin"),
                subtitle:
                    const Text("The beauty of the skin is that you can......"),
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
