import 'package:contact/core/components/size_konfig.dart';
import 'package:contact/core/constants/const_color.dart';
import 'package:flutter/material.dart';

class StyleText {
  String title;
  Function()? ontap;

  StyleText({
    required this.title,
    this.ontap,
  });
  getBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wi(10)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(color: ConstColor.white),
        ),
      ),
    );
  }
}
