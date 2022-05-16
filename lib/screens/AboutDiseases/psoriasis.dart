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
                " Comming soon",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "How is Psoriasis spread?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
