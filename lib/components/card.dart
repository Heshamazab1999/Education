import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:untitled5/constant.dart';

class CardHomeScreen extends StatelessWidget {
  final String label;
  final Function()? function;
  final String image;

  CardHomeScreen({this.function, this.label = '', this.image = ''});

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
        delayStart: Duration(milliseconds: 800),
        animationDuration: Duration(milliseconds: 800),
        curve: Curves.easeOut,
        direction: Direction.vertical,
        offset: 0.5,
        child: GestureDetector(
          onTap: function,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        )),
                  ),
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
        ));
  }
}
