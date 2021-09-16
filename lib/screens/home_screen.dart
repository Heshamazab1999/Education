import 'package:flutter/material.dart';

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
        child: GridView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: label.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.9),
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 4),
            itemBuilder: (BuildContext context, index) => CardHomeScreen(
                  label: label[index],
                  image: images[index],
                  function: () {},
                )),
      ),
    ));
  }
}
