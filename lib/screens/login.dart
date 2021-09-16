import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/components/Text_field.dart';
import 'package:untitled5/components/login_button.dart';
import 'package:untitled5/constant.dart';
import 'package:animate_do/animate_do.dart';
import 'package:untitled5/screens/home.dart';
import 'package:untitled5/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElasticInDown(
                delay: Duration(seconds: 2),
                animate: true,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/images/person.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElasticInDown(
                delay: Duration(seconds: 2),
                animate: true,
                child: TextFieldLogin(
                  function: (v) {},
                  textInputType: TextInputType.phone,
                  iconData: Icons.person,
                  hint: K.phoneNumber,
                ),
              ),
              ElasticInDown(
                delay: Duration(seconds: 2),
                animate: true,
                child: TextFieldLogin(
                  function: (v) {},
                  textInputType: TextInputType.phone,
                  iconData: Icons.password,
                  hint: K.password,
                ),
              ),
              Center(
                child: ElasticInDown(
                  delay: Duration(seconds: 2),
                  animate: true,
                  child: LoginButton(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
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
                        child: ElasticInDown(
                          delay: Duration(seconds: 2),
                          animate: true,
                          child: Text(K.signUp,
                              textDirection: TextDirection.ltr,
                              style: K.textLoginStyle),
                        )),
                    ElasticInDown(
                      delay: Duration(seconds: 2),
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
        ),
      ),
    ));
  }
}
