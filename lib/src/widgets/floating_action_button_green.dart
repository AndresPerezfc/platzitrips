import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  FloatingActionButtonGreen(
      {Key key, @required this.iconData, @required this.onPressed});

  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  var isPressed = false;
  void onPressedFav() {
    setState(() {
      isPressed = !isPressed;

      Scaffold.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.lightBlueAccent,
        content:
            Text(isPressed ? "Agregado a favoritos" : "Quitado de favoritos"),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: widget.onPressed,
      backgroundColor:
          Colors.blueAccent, //!isPressed ? Colors.lightBlueAccent : Colors.red,
      mini: true,
      tooltip: "Fav",
      child: Icon(
        Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }
}
