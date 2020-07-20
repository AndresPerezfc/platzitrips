import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLines = 1;

  TextInput(
      {Key key,
      @required this.hintText,
      @required this.inputType,
      @required this.controller,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        style: TextStyle(
            fontSize: 15,
            fontFamily: "Lato",
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffe5e5e5),
          border: InputBorder.none,
          hintText: this.hintText,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff5e5e5e5)),
              borderRadius: BorderRadius.all(Radius.circular(9))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff5e5e5e5)),
              borderRadius: BorderRadius.all(Radius.circular(9))),
        ),
      ),
    );
  }
}
