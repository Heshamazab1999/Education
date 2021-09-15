import 'package:flutter/material.dart';
import 'package:untitled5/constant.dart';

class TextFieldLogin extends StatelessWidget {
  final String? hint;
  final Function(String)? function;
  final TextEditingController? controller;
  final IconData? iconData;
  final TextInputType? textInputType;
  final Color? color;
  final Color? colorIcon;

  TextFieldLogin({this.hint,
    this.color = Colors.white,
    this.colorIcon = Colors.white,
    this.function,
    this.controller,
    this.iconData,
    this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: TextFormField(
        keyboardType: textInputType,
        textAlign: TextAlign.right,
        onChanged: function,
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: Icon(
              iconData,
              color: colorIcon,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            filled: true,
            fillColor: Colors.transparent,
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 18,
              color: color,
              fontWeight: FontWeight.bold,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              borderSide: BorderSide(color: K.mainColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: K.mainColor, width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ))),
      ),
    );
  }
}
