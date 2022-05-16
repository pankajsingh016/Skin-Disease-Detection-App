import 'package:flutter/material.dart';

class Blister extends StatelessWidget {
  const Blister({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Blisters"),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/images/blister.jpeg"))),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "A blister is a pocket of fluid between the upper layers of skin. The most common causes are friction, freezing, burning, infection, and chemical burns. Blisters are also a symptom of some diseases.The  blister bubble is formed from the epidermis, the uppermost layer of skin. Its purpose is to protect and cushion the layers below. Blisters can be filled with serum, plasma, blood or pus depending on how and where they are formed.This stops further damage and gives the tissue time to heal.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Fast Facts On Blisters",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "1. Blisters are filled with serum, plasma, blood, or pus. \n 2. Friction, burns, frostbite , and some medical conditions can produce blisters.\n 3.  Blisters help prevent further damage to deeper tissues. \n 4. It is best to leave blisters intact to protect the underlying layers from infection. \n 5.Wear well-fitting shoes and avoiding exposure to certain chemicals can prevent blisters from occurring.                                                                                                                                                                                                                                                 ",
                  style: TextStyle(fontSize: 18),
                )),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
    ));
  }
}
