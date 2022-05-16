import 'package:flutter/material.dart';

class Melanoma extends StatelessWidget {
  const Melanoma({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Melanoma"),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/images/melanoma.jpg"))),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Melanoma, which means \"black tumor,\" is the most dangerous type of skin cancer . It grows quickly and has the ability to spread to any organ. \n Melanoma comes from skin cells called melanocytes. These cells produce melanin, the dark pigment that gives skin its color. Most melanomas are black or brown in color, but some are pink, red, purple or skin-colored. \n About 30% of melanomas begin in existing moles , but the rest start in normal skin. This makes it especially important to pay attention to changes in your skin because the majority of melanomas don't start as moles. However, how many moles you have may help predict your skin’s risk for developing melanoma. It’s important to know if you’re in a high-risk group for developing melanoma skin cancer. Because of the fast growth rate of melanomas, a treatment delay sometimes may mean the difference between life and death. Knowing your risk can help you be extra vigilant in watching changes in your skin and seeking skin examinations since melanomas have a 99% cure rate if caught in the earliest stages. Early detection is important because treatment success is directly related to the depth of the cancerous growth. ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "How common is melanoma?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Melanoma accounts for only about 1% of all skin cancers, but causes the great majority of skin cancer-related deaths. It’s one of the most common cancers in young people under 30, especially in young women. \n Melanoma incidence has dramatically increased over the past 30 years. It’s widely accepted that increasing levels of ultraviolet (UV) exposure are one of the main reasons for this rapid rise in the number of melanoma cases.",
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
