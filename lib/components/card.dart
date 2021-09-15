import 'package:flutter/material.dart';
import 'package:untitled5/constant.dart';

class CardHomeScreen extends StatelessWidget {
  final String label;
  final Function()? function;
  final String image;

  CardHomeScreen({this.function, this.label = '', this.image = ''});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 200,
            width: 300,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: K.SecondColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: K.SecondColor)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      image,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    label,
                    style: K.textCardHomeStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
