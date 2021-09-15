import 'package:flutter/material.dart';
import 'package:untitled5/constant.dart';

class ContentOfAlert extends StatelessWidget {
  final String? label;
  final Function()? function;

  ContentOfAlert({this.label, this.function});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: function,
          child: Text(
            label!,
            style: K.textBioStyle,
          ),
          style: TextButton.styleFrom(side: BorderSide.none),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          color: Colors.black,
        )
      ],
    );
  }
}
