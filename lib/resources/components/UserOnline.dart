import 'package:chatUs/resources/style/Style.dart';
import 'package:flutter/material.dart';

class UserOnline extends StatelessWidget {
  String _imgURL;
  bool _status;

  UserOnline(this._imgURL, this._status);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 15),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              border: Border.all(
                  style: BorderStyle.solid,
                  width: 2,
                  color: (this._status) ? Colors.blue : Colors.transparent),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: NetworkImage(this._imgURL), fit: BoxFit.cover)),
        ),
        Container(
          margin: EdgeInsets.only(top: 27, left: 33),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, color: primaryDark, width: 1.5),
            color: primaryGreen,
            borderRadius: BorderRadius.circular(100),
          ),
        )
      ],
    );
  }
}
