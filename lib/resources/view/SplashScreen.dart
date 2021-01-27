import 'package:chatUs/resources/style/Style.dart';
import 'package:chatUs/resources/view/PageHome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
          color: primaryDark,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Image(image: AssetImage("assets/images/img.png")),
              Spacer(),
              Text(
                "Instant Messaging, Simple And Personal",
                style: coreText,
              ),
              SizedBox(height: 10),
              Text(
                "start your new journey in the Chat us",
                style: subTitleText,
              ),
              SizedBox(height: 18),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return PageHome();
                  }));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Let's Begin",
                      style: coreText.copyWith(fontSize: 20),
                    ),
                  ),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
