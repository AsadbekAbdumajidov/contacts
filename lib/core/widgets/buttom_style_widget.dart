import 'package:contact/core/constants/const_color.dart';
import 'package:flutter/material.dart';

class ButtomStyle {
  String title;
  Function()? ontap;

  ButtomStyle({
    required this.title,
    this.ontap,
  });
  getBar() {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(92, 33),
        backgroundColor: ConstColor.green,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      onPressed: ontap,
      child: Text(
        title,
        style: TextStyle(fontFamily: "Ubuntu", color: ConstColor.white),
      ),
    );
  }
}
