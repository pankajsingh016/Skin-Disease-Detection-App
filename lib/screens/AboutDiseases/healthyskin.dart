import 'package:flutter/material.dart';

class Healthy extends StatelessWidget {
  const Healthy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Healthy"),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.all(16),
                child:
                    Image(image: AssetImage("assets/images/healthyskin.jpg"))),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "\"The beauty of the skin is that you can affect it from both inside and out,\" says dermatologist Doris Day, MD, author of Forget the Facelift: Turn Back the Clock with a Revolutionary Program for Ageless Skin.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "What you eat Matters?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Eating plenty of fruits and vegetables  rich in antioxidants is good for your whole body, including your skin. \n\nAntioxidants such as beta-carotene and vitamins C, E, and A can curb the damage caused by unstable molecules known as free radicals. These molecules can harm skin cells and cause signs of aging.\n\nOne of the best ways to get more antioxidants is to eat a wide variety of fruits and vegetables. \n \"I recommend going for as much variety and color as possible in your diet,\" Day says. \"Try snacking on blueberries, strawberries, grapefruit, kale, spinach, and different kinds of peppers.\" She also suggests adding a little tomato paste, which contains an antioxidant called lycopene, to stir-fried vegetables, brown rice, or quinoa.\n Another good idea is to stock your grocery cart with foods that are high in omega-3 fatty acids, including wild salmon, sardines, fortified eggs, and walnuts.\n \"Omega-3 fatty acids help keep the top outer layer of the skin strong and intact so that external toxins and pollutants are kept out,\" says dermatologist David E. Bank, MD, director of the Center for Dermatology, Cosmetic and Laser Surgery in Mount Kisco, N.Y.",
                  style: TextStyle(fontSize: 16),
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
