import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:untitled5/components/Social_Button.dart';
import 'package:untitled5/components/social.dart';
import 'package:untitled5/constant.dart';
import 'package:untitled5/utility/utility.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> imagesIcon = [
    "assets/images/education.png",
    "assets/images/center.png",
    "assets/images/subscribe.png",
    "assets/images/contact.png",
    "assets/images/password.png",
  ];
  final List<String> labels = [
    "   الصف الثالث   ",
    "سنتر المعادى",
    K.subscription,
    K.contact,
    K.password,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ShowUpAnimation(
      delayStart: Duration(milliseconds: 800),
      animationDuration: Duration(milliseconds: 800),
      curve: Curves.easeOut,
      direction: Direction.horizontal,
      offset: 0.5,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: K.mainColor)),
                child: Image.asset(
                  "assets/images/male.png",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: ExpansionTileCard(
                elevation: 0,
                title: Text(
                  K.name,
                  style: K.textBioStyle,
                ),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "01004479160",
                          style: K.textPhoneStyle,
                          children: const <TextSpan>[
                            TextSpan(
                                text: '   :  رقم الهاتف ',
                                style: K.textPhoneStyle),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        endIndent: 20,
                        indent: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "01004479160",
                          style: K.textPhoneStyle,
                          children: const <TextSpan>[
                            TextSpan(
                                text: '  : هاتف ولى الامر ',
                                style: K.textPhoneStyle),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "الاشتراك الشهرى",
                      style: K.textpointeStyle,
                    ),
                    Text(
                      "24",
                      style: K.textpointeStyle,
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: K.SecondColor,
                ),
                Column(
                  children: [
                    Text(
                      "عدد النقاط",
                      style: K.textpointeStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          "24",
                          style: K.textpointeStyle,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: imagesIcon.length,
                  itemBuilder: (BuildContext context, index) => ProfileButton(
                        function: () {
                          Utility.displayAlertPassword(
                              "ادخال كلمه المرور", context);
                        },
                        textStyle: K.textCardHomeStyle,
                        label: labels[index],
                        image: imagesIcon[index],
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialButton(
                  function: () {},
                  image: "assets/images/youtube.png",
                ),
                SocialButton(
                  function: () {},
                  image: "assets/images/whatsapp.png",
                ),
                SocialButton(
                  function: () {},
                  image: "assets/images/facebook.png",
                ),
                SocialButton(
                  function: () {},
                  image: "assets/images/share.png",
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
