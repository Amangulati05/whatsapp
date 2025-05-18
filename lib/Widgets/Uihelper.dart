import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class uihelper {
  static CustomButton({
    required VoidCallback Callback,
    required String buttonName,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          Callback ();

        },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
        child: Text(
          'Button name',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,

  }) {
    return Text(
      text,
      style: TextStyle(fontSize: height, color: color ?? Color(0xff5E5E5E),
      fontWeight: fontweight),
    );
  }
}
