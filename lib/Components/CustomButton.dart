// ignore: file_names
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../screens/Result/result.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.tex,
    required this.col,
    required this.option,
  }) : super(key: key);
  final String tex;
  final Color col;
  final String option;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  _getImage(ImageSource imageSource) async {
    final XFile? image = await ImagePicker().pickImage(source: imageSource);
    if (image == null) return;
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => Result(
                imagefile: image,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.option == "Camera") {
          //call for camera method to pick image
          _getImage(ImageSource.camera);
        } else if (widget.option == "Gallery") {
          _getImage(ImageSource.gallery);
        }
      },
      child: Text(
        widget.tex,
        style: const TextStyle(fontSize: 24),
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(
            MediaQuery.of(context).size.width * 0.7,
            MediaQuery.of(context).size.height * 0.1)),
        backgroundColor: MaterialStateProperty.all<Color>(widget.col),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        )),
      ),
    );
  }
}
