import 'package:flutter/material.dart';
import 'package:untitled5/constant.dart';

class ContainerChooser extends StatelessWidget {
  final String? label;
  final Function()? function;

  ContainerChooser({this.label, this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: K.mainColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  label!,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
