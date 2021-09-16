
import 'package:flutter/material.dart';
import 'package:untitled5/components/Text_field.dart';
import 'package:untitled5/components/container_chooser.dart';
import 'package:untitled5/components/login_button.dart';
import 'package:untitled5/components/switch_gender.dart';
import 'package:untitled5/constant.dart';
import 'package:animate_do/animate_do.dart';
import 'package:untitled5/screens/login.dart';
import 'package:untitled5/utility/utility.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isMe = true;

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElasticInDown(
                      delay: Duration(seconds: 2),
                      animate: true,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
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
                    ),
                    ElasticInDown(
                      delay: Duration(seconds: 2),
                      animate: true,
                      child: TextFieldLogin(
                        function: (v) {},
                        textInputType: TextInputType.name,
                        iconData: Icons.person,
                        hint: K.YourName,
                      ),
                    ),
                    ElasticInDown(
                      delay: Duration(seconds: 2),
                      animate: true,
                      child: TextFieldLogin(
                        function: (v) {},
                        textInputType: TextInputType.phone,
                        iconData: Icons.phone,
                        hint: K.phoneNumber,
                      ),
                    ),
                    ElasticInDown(
                      delay: Duration(seconds: 2),
                      animate: true,
                      child: TextFieldLogin(
                        function: (v) {},
                        textInputType: TextInputType.phone,
                        iconData: Icons.phone,
                        hint: K.phoneNumberDad,
                      ),
                    ),
                    ElasticInDown(
                      delay: Duration(seconds: 2),
                      animate: true,
                      child: TextFieldLogin(
                        function: (v) {},
                        textInputType: TextInputType.name,
                        iconData: Icons.password,
                        hint: K.password,
                      ),
                    ),
                    ElasticInDown(
                      delay: Duration(seconds: 2),
                      animate: true,
                      child: TextFieldLogin(
                        function: (v) {},
                        textInputType: TextInputType.name,
                        iconData: Icons.password,
                        hint: K.confirmPassword,
                      ),
                    ),
                    ElasticInDown(
                      delay: Duration(seconds: 2),
                      animate: true,
                      child: ContainerChooser(
                        function: () {
                          Utility.displayAlert(
                              "اختيار اسم السنتر ",
                              [
                                "السنه الاولى ",
                                "السنه التانيه",
                                "السنه التالته"
                              ],
                              context);
                        },
                        label: K.chooseYourCenter,
                      ),
                    ),
                    ElasticInDown(
                      delay: Duration(seconds: 2),
                      animate: true,
                      child: ContainerChooser(
                        function: () {
                          Utility.displayAlert(
                              "اختيار السنه",
                              [
                                "السنه الاولى ",
                                "السنه التانيه",
                                "السنه التالته"
                              ],
                              context);
                        },
                        label: K.chooseYourYear,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElasticInDown(
                            delay: Duration(seconds: 2),
                            animate: true,
                            child: ChooseGender(
                              label: K.male,
                              function: () {
                                setState(() {
                                  isMe = true;
                                });
                              },
                              image: "assets/images/male.png",
                              color: isMe ? K.SecondColor : Colors.transparent,
                            ),
                          ),
                          ElasticInDown(
                            delay: Duration(seconds: 2),
                            animate: true,
                            child: ChooseGender(
                              label: K.female,
                              function: () {
                                setState(() {
                                  isMe = false;
                                });
                              },
                              image: "assets/images/female.png",
                              color: !isMe ? K.SecondColor : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child:  ElasticInDown(
                        delay: Duration(seconds: 2),
                        animate: true,
                        child: LoginButton(
                          label: K.signUp,
                          color: K.mainColor,
                          function: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ElasticInDown(
                        delay: Duration(seconds: 2),
                        animate: true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text(K.enter, style: K.textLoginStyle),
                            ),
                            Text(
                              K.alreadyHaveAccount,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
