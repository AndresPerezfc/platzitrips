import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String userName, details, comments;

  Review(this.pathImage, this.userName, this.details, this.comments);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Photo(pathImage),
        UserDetails(userName, details, comments)
      ],
    );
  }
}

class Photo extends StatelessWidget {
  final String pathImage;

  Photo(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          )),
    );
  }
}

class UserDetails extends StatelessWidget {
  final String userName, details, comments;

  UserDetails(this.userName, this.details, this.comments);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(
            userName,
            style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Row(
            children: <Widget>[
              Text(
                details,
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 13.0,
                    color: Color(0xffa3a5a7)),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Estrella(),
                    Estrella(),
                    Estrella(),
                    Estrella()
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(
            comments,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class Estrella extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.star,
        color: Color(0xfff2c611),
        size: 16.0,
      ),
    );
  }
}
