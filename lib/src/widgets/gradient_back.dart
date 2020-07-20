import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title;
  double height = 0.0;
  GradientBack(
      {Key key, this.title, this.height}); //height = null -> full screen
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (height == null) {
      height = screenHeight;
    }
    return Container(
        width: screenHeight,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green, Colors.greenAccent],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: FittedBox(
          fit: BoxFit.none,
          alignment: Alignment(-1.5, -0.8),
          child: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              borderRadius: BorderRadius.circular(screenHeight / 2),
            ),
          ),
        ));
    /*Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: "Lato",
          ),
        ),*/
    //alignment: Alignment(-0.9, -0.6));
  }
}
