import 'package:flutter/material.dart';
import 'package:untitled5/constant.dart';

class BioComponent extends StatelessWidget {
  final String? centerName;
  final String? nameOfYear;
  final String? phone1;
  final String? phone2;
  final int? subscription;
  final int? points;

  BioComponent(
      {this.centerName,
      this.nameOfYear,
      this.phone1,
      this.phone2,
      this.subscription,
      this.points});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: phone1!,
            style: K.textPhoneStyle,
            children: const <TextSpan>[
              TextSpan(text: '  :رقم الهاتف', style: K.textPhoneStyle),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          endIndent: 50,
          indent: 50,
        ),
        RichText(
          text: TextSpan(
            text: phone2!,
            style: K.textPhoneStyle,
            children: const <TextSpan>[
              TextSpan(text: ' :رقم ولى الامر ', style: K.textPhoneStyle),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          endIndent: 20,
          indent: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              nameOfYear!,
              style: K.textBioStyle,
            ),
            Text(
              centerName!,
              style: K.textBioStyle,
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
          endIndent: 20,
          indent: 20,
        ),
        RichText(
          text: TextSpan(
            text: subscription!.toString(),
            style: K.textPhoneStyle,
            children: const <TextSpan>[
              TextSpan(text: ' : الاشتراك الشهرى', style: K.textPhoneStyle),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          endIndent: 20,
          indent: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 25,
              color: Colors.yellow,
            ),
            RichText(
              text: TextSpan(
                text: points!.toString(),
                style: K.textPhoneStyle,
                children: const <TextSpan>[
                  TextSpan(text: ': عدد النقاط', style: K.textPhoneStyle),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
