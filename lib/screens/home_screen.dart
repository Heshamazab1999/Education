import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:untitled5/components/Social_Button.dart';
import 'package:untitled5/components/bio_component.dart';
import 'package:untitled5/components/card.dart';
import 'package:untitled5/constant.dart';
import 'package:untitled5/utility/utility.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final List<String> imagesIcon = [
    "assets/images/subscripe.png",
    "assets/images/contact.png",
    "assets/images/password.png",
    "assets/images/whatsapp.png",
    "assets/images/youtube.png",
    "assets/images/facebook.png",
    "assets/images/share.png",
    "assets/images/logout.png",
  ];
  final List<String> labels = [
    K.subscription,
    K.contact,
    K.password,
    K.whatsApp,
    K.Youtube,
    K.facebook,
    K.share,
    K.signOut
  ];

  final List<String> images = [
    "assets/images/quizicon.png",
    "assets/images/message.png",
    "assets/images/studying.png",
    "assets/images/bookHistory.png",
    "assets/images/qricon.png",
    "assets/images/videoIcoin.png",
    "assets/images/documents.png",
  ];
  final List<String> label = [
    K.quiz,
    K.conversion,
    K.bankInformation,
    K.history,
    K.qr,
    K.videos,
    K.files,
  ];

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      closeIcon: Icon(
        Icons.clear,
        color: K.mainColor,
        size: 30,
      ),
      radius: BorderRadius.circular(25),
      background: Colors.white,
      key: _sideMenuKey,
      menu: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ExpansionTileCard(
              baseColor: Colors.white,
              expandedColor: Colors.white,
              animateTrailing: true,
              elevation: 0,
              title: Container(
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
              children: [
                Divider(
                  color: K.mainColor,
                  endIndent: 20,
                  thickness: 1,
                  indent: 20,
                ),
                BioComponent(
                  centerName: "سنتر المعادى",
                  nameOfYear: "الصف الثالث",
                  phone1: "01004479160",
                  phone2: "01004479160",
                  subscription: 24,
                  points: 1,
                ),
              ],
            ),
            ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: imagesIcon.length,
                itemBuilder: (BuildContext context, index) => SocialButton(
                      function: () {
                        Utility.displayAlertPassword(
                            "ادخال كلمه المرور", context);
                      },
                      textStyle: K.textCardHomeStyle,
                      label: labels[index],
                      image: imagesIcon[index],
                    ))
          ],
        ),
      ),
      type: SideMenuType.shrikNRotate,

      // check above images
      child: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            elevation: 0,
            backgroundColor: K.mainColor,
            title: Text(
              "الصفحه الرئسيه",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                final _state = _sideMenuKey.currentState;
                if (_state!.isOpened)
                  _state.closeSideMenu(); // close side menu
                else
                  _state.openSideMenu(); // open side menu
              },
            ),
          ),
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
              child: StaggeredGridView.countBuilder(
                  staggeredTileBuilder: (int index) =>
                      new StaggeredTile.count(2, index.isEven ? 2.1 : 2.3),
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) =>
                      CardHomeScreen(
                        label: label[index],
                        image: images[index],
                        function: () {},
                      )),
            ),
          )),
    );
  }
}
