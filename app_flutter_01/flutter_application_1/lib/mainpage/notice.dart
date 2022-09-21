/**
 * notification界面
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/_routing/router.dart';
import 'package:flutter_application_1/_routing/routes.dart';

final BACkGROUNDCOLOR = Color.fromRGBO(188, 169, 255, 1);
final TEXTCOLOR = Color.fromARGB(255, 0, 0, 0);
final REMINDERCOLOR = Color.fromARGB(255, 255, 255, 255);

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePage();
}

class _NoticePage extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, noticeViewRoute);
              },
              icon: const Icon(Icons.notifications),
              iconSize: 40,
              padding: const EdgeInsets.all(20.0))
        ],
        //title
        title: const Text(
          "Notification",
          //stule of title
          style: TextStyle(
            color: Color.fromRGBO(108, 95, 188, 1),
            fontSize: 34,
            height: 2,
          ),
        ),
        toolbarHeight: 110,
        backgroundColor: Color.fromRGBO(188, 169, 255, 1),
        elevation: 0,
      ),

      body: ListView(
        children: [
          Container(
              decoration: new BoxDecoration(color: BACkGROUNDCOLOR),
              padding: EdgeInsets.only(left: 0, top: 0, bottom: 10, right: 0),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Color.fromARGB(100, 255, 255, 255),
              )),
          Container(
              //chat list
              padding: EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 0),
              child: Column(
                children: [
                  new notificationChat(),
                  new notificationLike(),
                  new notificationGood(),
                  new notificationChat(),
                  new blank()

                ],
              )),
        ],
      ),
      // body: Text('Chat'),
      // backgroundColor: Color.fromRGBO(243, 241, 255, 1),
    );
  }
}


class blank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(color: BACkGROUNDCOLOR),
      padding: EdgeInsets.only(left: 30, top: 0, bottom: 0, right: 20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //横向内容
            
            Container(
                //Text 容器

                width: 200,
                margin: EdgeInsets.only(left: 10, right: 10),
                // padding:
                //     EdgeInsets.only(left: 2, top: 20, bottom: 20, right: 2),
                child: Column(
                  children: [
                  
                  ],
                )), //Text 容器
            Container(
              //提示栏 容器
              child: Column(children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      " \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
                      style: new TextStyle(fontSize: 11, color: REMINDERCOLOR),
                    )),
          
              ]),
            ),
          ]),
          Divider(
            height: 30,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

class notificationLike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(color: BACkGROUNDCOLOR),
      padding: EdgeInsets.only(left: 30, top: 0, bottom: 0, right: 20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //横向内容
            Container(
              //头像容器
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 223, 255, 1),
                      Color.fromRGBO(75, 38, 118, 1)
                    ]),
                borderRadius: BorderRadius.circular(20),
              ),
              //头像容器
              child: Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                      )),
                ),
              ),
            ), //头像容器
            Container(
                //Text 容器

                width: 200,
                margin: EdgeInsets.only(left: 10, right: 10),
                // padding:
                //     EdgeInsets.only(left: 2, top: 20, bottom: 20, right: 2),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lucas(Australia)",
                          style: new TextStyle(fontSize: 17, color: TEXTCOLOR),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "You got a ❤️ from this user.",
                          style: new TextStyle(fontSize: 12, color: TEXTCOLOR),
                        )),
                  ],
                )), //Text 容器
            Container(
              //提示栏 容器
              child: Column(children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Got it",
                      style: new TextStyle(fontSize: 11, color: REMINDERCOLOR),
                    )),
                new Icon(
                  Icons.check,
                  color: REMINDERCOLOR,
                ),
              ]),
            ),
          ]),
          Divider(
            height: 30,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}


class notificationGood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(color: BACkGROUNDCOLOR),
      padding: EdgeInsets.only(left: 30, top: 0, bottom: 0, right: 20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //横向内容
            Container(
              //头像容器
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 223, 255, 1),
                      Color.fromRGBO(75, 38, 118, 1)
                    ]),
                borderRadius: BorderRadius.circular(20),
              ),
              //头像容器
              child: Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                      )),
                ),
              ),
            ), //头像容器
            Container(
                //Text 容器

                width: 200,
                margin: EdgeInsets.only(left: 10, right: 10),
                // padding:
                //     EdgeInsets.only(left: 2, top: 20, bottom: 20, right: 2),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lucas(Australia)",
                          style: new TextStyle(fontSize: 17, color: TEXTCOLOR),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "You got a 👍 from this user.",
                          style: new TextStyle(fontSize: 12, color: TEXTCOLOR),
                        )),
                  ],
                )), //Text 容器
            Container(
              //提示栏 容器
              child: Column(children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Got it",
                      style: new TextStyle(fontSize: 11, color: REMINDERCOLOR),
                    )),
                new Icon(
                  Icons.check,
                  color: REMINDERCOLOR,
                ),
              ]),
            ),
          ]),
          Divider(
            height: 30,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

class notificationChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(color: BACkGROUNDCOLOR),
      padding: EdgeInsets.only(left: 30, top: 0, bottom: 0, right: 20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //横向内容
            Container(
              //头像容器
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 223, 255, 1),
                      Color.fromRGBO(75, 38, 118, 1)
                    ]),
                borderRadius: BorderRadius.circular(20),
              ),
              //头像容器
              child: Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                      )),
                ),
              ),
            ), //头像容器
            Container(
                //Text 容器

                width: 200,
                margin: EdgeInsets.only(left: 10, right: 10),
                // padding:
                //     EdgeInsets.only(left: 2, top: 20, bottom: 20, right: 2),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lucas(Australia)",
                          style: new TextStyle(fontSize: 17, color: TEXTCOLOR),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "You got a message from this user.",
                          style: new TextStyle(fontSize: 12, color: TEXTCOLOR),
                        )),
                  ],
                )), //Text 容器
            Container(
              //提示栏 容器
              child: Column(children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Reply",
                      style: new TextStyle(fontSize: 11, color: REMINDERCOLOR),
                    )),
                new Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: REMINDERCOLOR,
                ),
              ]),
            ),
          ]),
          Divider(
            height: 30,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
