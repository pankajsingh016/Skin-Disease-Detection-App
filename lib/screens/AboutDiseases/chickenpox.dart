import 'package:flutter/material.dart';

class Chickenpox extends StatelessWidget {
  const Chickenpox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Chickenpox"),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.all(16),
                child:
                    Image(image: AssetImage("assets/images/chickenpox.png"))),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Chickenpox is an infection that causes a skin rash. The disease is caused by a germ called varicella-zoster virus. (Chickenpox itself is also called varicella-zoster.) Most people will get the virus when they’re young if they haven’t had a chickenpox vaccine.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "How is chickepox Spread?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Children can get chickenpox at any age. After being exposed to chickenpox, your child may appear to be fine for one to three weeks before feeling sick. Children can spread the virus from one day before they show signs of illness to about five days after a skin rash appears. \n The virus is spread by: \n 1. Coming in contact with someone who has chickenpox. \n 2. Breathing air from an infected person who sneezes or coughs. \n 3. Coming in contact with fluids from an infected child's eyes, nose or mouth.",
                  style: TextStyle(fontSize: 18),
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "What is the difference between smallpox and chickenpox?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Chickenpox and smallpox are both diseases that produce rashes on the skin, but they are different. For one thing, smallpox is a much more serious disease, causing severe illness and death. They are caused by different viruses. \n While the two diseases both produce rashes, the rashes themselves develop at different times and the rashes look different. Smallpox pustules look the same as each other, while the chickenpox rash develops in waves. The individual spots don’t look the same and some form scabs while others are still blistering. \n There’s another important difference. A massive global vaccination program has eradicated (wiped out) smallpox.",
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
