import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled5/components/Text_field.dart';
import 'package:untitled5/components/container_chooser.dart';
import 'package:untitled5/components/login_button.dart';
import 'package:untitled5/components/switch_gender.dart';
import 'package:untitled5/constant.dart';
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
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/images/signup.json', height: 300),
            TextFieldLogin(
              function: (v) {},
              textInputType: TextInputType.name,
              iconData: Icons.person,
              hint: K.YourName,
            ),
            TextFieldLogin(
              function: (v) {},
              textInputType: TextInputType.phone,
              iconData: Icons.phone,
              hint: K.phoneNumber,
            ),
            TextFieldLogin(
              function: (v) {},
              textInputType: TextInputType.phone,
              iconData: Icons.phone,
              hint: K.phoneNumberDad,
            ),
            TextFieldLogin(
              function: (v) {},
              textInputType: TextInputType.name,
              iconData: Icons.password,
              hint: K.password,
            ),
            TextFieldLogin(
              function: (v) {},
              textInputType: TextInputType.name,
              iconData: Icons.password,
              hint: K.confirmPassword,
            ),
            ContainerChooser(
              function: () {
                Utility.displayAlert(
                    "اختيار اسم السنتر ",
                    ["السنه الاولى ", "السنه التانيه", "السنه التالته"],
                    context);
              },
              label: K.chooseYourCenter,
            ),
            ContainerChooser(
              function: () {
                Utility.displayAlert(
                    "اختيار السنه",
                    ["السنه الاولى ", "السنه التانيه", "السنه التالته"],
                    context);
              },
              label: K.chooseYourYear,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChooseGender(
                    label: K.male,
                    function: () {
                      setState(() {
                        isMe = true;
                      });
                    },
                    image: "assets/images/male.png",
                    color: isMe ? K.SecondColor : K.thirdColor,
                  ),
                  ChooseGender(
                    label: K.female,
                    function: () {
                      setState(() {
                        isMe = false;
                      });
                    },
                    image: "assets/images/female.png",
                    color: !isMe ? K.SecondColor : K.thirdColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: LoginButton(
                label: K.signUp,
                color: K.mainColor,
                function: () {},
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
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(K.enter, style: K.textLoginStyle),
                  ),
                  Text(
                    K.alreadyHaveAccount,
                    style: K.textLoginStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
