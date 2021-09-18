import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:untitled5/components/card.dart';
import 'package:untitled5/constant.dart';

class HomeScreen extends StatelessWidget {
  final List<String> images = [
    "assets/images/exam.png",
    "assets/images/online.png",
    "assets/images/folder.png",
    "assets/images/scan.png",
    "assets/images/playlist.png",
    "assets/images/timeline.png",
  ];
  final List<String> label = [
    K.quiz,
    K.bankInformation,
    K.history,
    K.qr,
    K.videos,
    K.files,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundHome.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: AnimationLimiter(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.9),
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 4),
            itemCount: label.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 100),
                columnCount: 2,
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FlipAnimation(
                    child: CardHomeScreen(
                      label: label[index],
                      image: images[index],
                      function: () {
                        if (index == 0) {
                          print("0");
                        } else if (index == 1) {
                          print("1");
                        } else if (index == 2) {
                          print("2");
                        } else if (index == 3) {
                          print("3");
                        } else if (index == 4) {
                          print("4");
                        } else if (index == 5) {
                          print("5");
                        }
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ));
  }
}
