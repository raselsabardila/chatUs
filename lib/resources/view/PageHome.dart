import 'package:chatUs/resources/components/ListMessages.dart';
import 'package:chatUs/resources/components/UserOnline.dart';
import 'package:chatUs/resources/style/Style.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            backgroundColor: primaryDark,
            elevation: 0,
            leading: Container(
              margin: EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 5),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover)),
            ),
            actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
          ),
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              color: primaryDark,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Online",
                        style: titleBody,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff323543),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "4",
                          textAlign: TextAlign.center,
                          style: nameUserText,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        UserOnline(
                            "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            true),
                        UserOnline(
                            "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            false),
                        UserOnline(
                            "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            false),
                        UserOnline(
                            "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            true),
                        UserOnline(
                            "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            false),
                        UserOnline(
                            "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            true),
                        UserOnline(
                            "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            false)
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Messages",
                        style: titleBody,
                      ),
                      Icon(
                        Icons.search_rounded,
                        color: primaryGrey,
                      )
                    ],
                  ),
                  ListMessages(),
                  ListMessages(),
                  ListMessages(),
                  ListMessages(),
                  ListMessages(),
                  ListMessages(),
                  ListMessages(),
                  ListMessages(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedLabelStyle:
                  TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500),
              unselectedLabelStyle:
                  TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500),
              selectedFontSize: 13,
              unselectedFontSize: 13,
              selectedItemColor: primaryPurple,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff2E3141),
              unselectedItemColor: primaryGrey,
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      child: Icon(Icons.chat_bubble_rounded),
                      padding: EdgeInsets.only(top: 7),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Text("chats"),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.call), title: Text("calls")),
              ]),
        )));
  }
}
