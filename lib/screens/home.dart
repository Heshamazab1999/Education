import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:untitled5/constant.dart';
import 'package:untitled5/controller/base_controller.dart';
import 'package:untitled5/screens/chat_screen.dart';
import 'package:untitled5/screens/home_screen.dart';
import 'package:untitled5/screens/profile_screen.dart';

class Home extends StatelessWidget {
  final _controller = Get.put(BaseController());
  final List<Widget> bodyContent = [
    HomeScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];
  final List<String> label = ["الصفحه الرئسيه", "المحادثات", "الصفحه الشخصيه"];
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Obx(()=> Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          backgroundColor: K.mainColor,
          title: Text(
            label.elementAt(_controller.selectedIndex),
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          centerTitle: true,
         ),
        body: Obx(() => Center(
              child: bodyContent.elementAt(_controller.selectedIndex),
            )),
        bottomNavigationBar: Obx(
          () => Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomNavigationBar(
              elevation: 2,
              borderRadius: Radius.circular(50),
              iconSize: 30.0,
              selectedColor: Colors.white,
              strokeColor: Color(0x30040307),
              unSelectedColor: Color(0x30040307),
              backgroundColor: K.mainColor,
              items: [
                CustomNavigationBarItem(
                  icon: Icon(Icons.home),
                ),
                CustomNavigationBarItem(
                  icon: Icon(Icons.chat),
                ),
                CustomNavigationBarItem(
                  icon: Icon(Icons.person),
                ),
              ],
              currentIndex: _controller.selectedIndex,
              onTap: (index) => _controller.selectedIndex = index,
            ),
          ),
        ),
      ),
      ));
  }
}
