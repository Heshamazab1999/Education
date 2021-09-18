import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled5/components/Text_field.dart';
import 'package:untitled5/components/custompaint.dart';
import 'package:untitled5/components/login_button.dart';
import 'package:untitled5/constant.dart';
import 'package:animate_do/animate_do.dart';
import 'package:untitled5/screens/home.dart';
import 'package:untitled5/screens/signup_screen.dart';
import 'package:delayed_display/delayed_display.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: size.height / 2,
            width: size.width,
            child: CustomPaint(
              painter: Shape(),
              child: Center(
                child: Container(
                  color: Colors.transparent,
                  width: 300,
                  height: 300,
                  child: Lottie.asset(
                    'assets/images/study.json',
                  ),
                ),
              ),
            ),
          ),
          TextFieldLogin(
            function: (v) {},
            textInputType: TextInputType.phone,
            iconData: Icons.person,
            hint: K.phoneNumber,
          ),
          TextFieldLogin(
            function: (v) {},
            textInputType: TextInputType.phone,
            iconData: Icons.password,
            hint: K.password,
          ),
          Center(
            child: DelayedDisplay(
              delay: Duration(seconds: 1),
              slidingCurve: Curves.easeIn,
              child: LoginButton(
                function: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                color: K.mainColor,
                label: K.signUp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: FadeInUp(
                      animate: true,
                      child: Text(K.enter,
                          textDirection: TextDirection.ltr,
                          style: K.textLoginStyle),
                    )),
                FadeInUp(
                  animate: true,
                  child: Text(K.haveAnAccount,
                      textDirection: TextDirection.rtl,
                      style: K.textLoginStyle),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
