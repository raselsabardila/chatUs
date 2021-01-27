import 'package:chatUs/resources/style/Style.dart';
import 'package:flutter/material.dart';

class ListMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 15),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 15),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "John Wick",
                  style: nameUserText,
                ),
                Text(
                  "Send a photo",
                  style: subTitleText,
                )
              ],
            ),
            Spacer(),
            Text(
              "Now",
              style: subTitleText,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 0.5,
          color: primaryGrey.withOpacity(0.3),
        )
      ],
    );
  }
}
