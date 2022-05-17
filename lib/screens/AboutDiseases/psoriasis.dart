import 'package:flutter/material.dart';

class Psoriasis extends StatelessWidget {
  const Psoriasis({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Psoriasis"),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/images/psoriasis.jpg"))),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "What is Psoriasis?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Psoriasis is a skin disorder that causes skin cells to multiply up to 10 times faster than normal. This makes the skin build up into bumpy red patches covered with white scales. They can grow anywhere, but most appear on the scalp, elbows, knees, and lower back. Psoriasis can't be passed from person to person. It does sometimes happen in members of the same family. Psoriasis usually appears in early adulthood. For most people, it affects just a few areas. In severe cases, psoriasis can cover large parts of the body. The patches can heal and then come back throughout a person's life.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Symptoms",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "The symptoms of psoriasis vary depending on the type you have. Some common symptoms for plaque psoriasis -- the most common variety of the condition -- include: \nPlaques of red skin, often covered with silver-colored scales. These plaques may be itchy and painful, and they sometimes crack and bleed. In severe cases, the plaques will grow and merge, covering large areas. \n Disorders of the fingernails and toenails, including discoloration and pitting of the nails. The nails may also crumble or detach from the nail bed. \n Plaques of scales or crust on the scalp. \n \nPeople with psoriasis can also get a type of arthritis called psoriatic arthritis. It causes pain and swelling in the joints. The National Psoriasis Foundation estimates that between 10% to 30% of people with psoriasis also have psoriatic arthritis.",
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
