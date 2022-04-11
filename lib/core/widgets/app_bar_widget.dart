import 'package:contact/core/components/size_konfig.dart';
import 'package:contact/core/constants/const_color.dart';
import 'package:contact/core/constants/const_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar {
  String title;
  String rightIcon;
  IconData leftIcon;
  Function()? leftOntap;
  Function()? rightOntap;

  HomeAppBar({
    required this.title,
    required this.rightIcon,
    required this.leftIcon,
    this.leftOntap,
    this.rightOntap,
  });
  getBar() {
    return AppBar(
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/png/Ellipse 13.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: wi(10)),
              child: Text(
                title,
                style:  TextStyle(
                    color: ConstColor.white,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              splashRadius: he(20),
              icon:
                  SvgPicture.asset(ConstIcon.setting, color: ConstColor.white),
              onPressed: leftOntap,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(6)),
              child: Text(
                "|",
                style: TextStyle(
                    color: ConstColor.white,
                    fontSize: he(24),
                    fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              splashRadius: he(20),
              icon: Icon(
                leftIcon,
                color: ConstColor.white,
              ),
              onPressed: rightOntap,
            ),
          ],
        )
      ]),
    );
  }
}
