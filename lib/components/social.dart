import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String? image;
  final Function()? function;

  SocialButton({this.image, this.function});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: function,
      child: SizedBox(
        height: 40,
        width: 40,
        child: Image.asset(image!),
      ),
    );
  }
}
