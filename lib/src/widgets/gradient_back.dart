import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title;
  GradientBack(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green, Colors.greenAccent],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: "Lato",
          ),
        ),
        alignment: Alignment(-0.9, -0.6));
  }
}
