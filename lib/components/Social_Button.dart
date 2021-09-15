import 'package:flutter/material.dart';
import 'package:untitled5/constant.dart';

class SocialButton extends StatelessWidget {
  final String? label;
  final Function()? function;
  final String? image;
  final TextStyle? textStyle;

  SocialButton({this.function, this.image, this.label, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: function,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    label!,
                    style: textStyle,
                  ),
                ),
                SizedBox(width: 40, height: 35, child: Image.asset(image!)),
              ],
            ),
          ),
          Divider(
            color: K.mainColor,
            indent: 20,
            thickness: 1,
            endIndent: 20,
          )
        ],
      ),
    );
  }
}
