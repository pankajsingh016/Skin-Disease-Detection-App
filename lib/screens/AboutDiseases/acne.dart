import 'package:flutter/material.dart';

class Acne extends StatelessWidget {
  const Acne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Acne"),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/images/acne.jpg"))),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Acne is a very common skin condition that causes pimples mostly on the face, forehead, chest, shoulders and upper back. There are a variety of causes including genetics, fluctuating hormone levels, stress, high humidity and using oily or greasy personal care products. Acne commonly affects teenagers but can occur at any age.Acne is a common skin condition where the pores of your skin become blocked by hair, sebum (an oily substance), bacteria and dead skin cells. Those blockages produce blackheads, whiteheads, nodules and other types of pimples . If you have acne, know you’re not alone. It’s the most common skin condition that people experience. It’s estimated that 80% of people ages 11 to 30 will have at least a mild form of acne, and most people are affected by it at some point in their lives.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "What Cause Acne?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Acne is largely a hormonal condition that’s driven by androgen hormones, which typically become active during the teenage and young adult years. Sensitivity to these hormones — combined with surface bacteria on the skin and fatty acids within oil glands — can result in acne. \n Certain things can cause acne and/or make it worse: \n1. Fluctuating hormone levels around the time of a woman’s period. \n 2. Picking at acne sores. \n 3. Clothing and headgear, like hats and sports helmets. \n 4. Air pollution and certain weather conditions, especially high humidity. \n 5. Using oily or greasy personal care products (like heavy lotions, creams or hair pomades and waxes) or working in an area where you routinely come in contact with grease (such as working at a restaurant where there are greasy food surfaces and frying oil). \n 6. Stress, which increases the hormone cortisol, can also cause acne to flare. \n 7. Some medications.\n 8. Genetics                                                                                                                                                                                                                                                ",
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
