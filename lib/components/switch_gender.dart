import 'package:flutter/material.dart';

class ChooseGender extends StatelessWidget {
  final String? image;
  final Function()? function;
  final String? label;
  final Color? color;

  ChooseGender({this.image, this.function, this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: function,
      child: Column(
        children: [
          SizedBox(
              height: 80,
              width: 80,
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              label!,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
