import 'package:flutter/material.dart';

class Eczema extends StatelessWidget {
  const Eczema({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Eczema"),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/images/eczema.jpg"))),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Eczema  is a group of conditions that make your skin inflamed or irritated. The most common type is atopic dermatitis or atopic eczema. “Atopic” refers to a person’s tendency to get allergic conditions such as asthma and hay fever. \n Eczema affects about 10% to 20% of infants and about 3% of adults and children in the U.S. Most children outgrow it by their 10th birthday. Some people continue to have symptoms on and off for life. \n There’s no cure, but most people can manage their symptoms by getting treatment and by avoiding irritants. Eczema isn’t contagious, so you can’t spread it to another person. \n ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Eczema Symptoms",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Eczema looks different for everyone. And your flare-ups won’t always happen in the same area. \n No matter which part of your skin is affected, eczema is almost always itchy. The itching sometimes starts before the rash. Your skin may also be: \n 1. Red \n 2. Dry \n 3. Cracked \n 4. Leathery \n ",
                style: TextStyle(fontSize: 18),
              ),
            ),
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
