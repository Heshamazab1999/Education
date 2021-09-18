import 'package:flutter/material.dart';
import 'package:untitled5/constant.dart';

class LoginButton extends StatelessWidget {
  final String? label;
  final Function()? function;
  final Color? color;

  LoginButton({this.label, this.function, this.color = K.mainColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 250,
      child: TextButton(
        onPressed: function,
        child: Text(
          label!,
          style: K.textLoginStylee,
        ),
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
