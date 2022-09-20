import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/CustomizedWidget.dart'
    as customized_widget;
import 'package:flutter_application_1/components/home_components/HomePageAvatar.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
    as color_theme;

class FriendsWidget extends StatefulWidget {
  const FriendsWidget({Key? key}) : super(key: key);

  @override
  State<FriendsWidget> createState() => _FriendsWidget();
}

class _FriendsWidget extends State<FriendsWidget> {
  List getFriends() {
    List friends = [];
    Random random = Random();
    for (int i = 0; i < 15; i++) {
      int userIndex = random.nextInt(3)+1;
      friends.add(HomePageAvatar(userIndex: userIndex));
    }
    return friends;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Expanded(
      child: Container(
          padding: const EdgeInsets.only(top: 10),
          decoration: customized_widget.roundedPageDecoration,
          child: ListView(
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new _user1(), new _user2(), new _user3()],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new _user1(), new _user2(), new _user3()],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new _user1(), new _user2(), new _user3()],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new _user1(), new _user2(), new _user3()],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new _user1(), new _user2(), new _user3()],
                ),
              ),
            ],
          )),
    );*/

    List friends = getFriends();
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: customized_widget.roundedPageDecoration,
        child: GridView.builder(
          itemCount: friends.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
            crossAxisSpacing: 20,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) => friends[index]),
      ),
    );
  }
}

/*
class _user1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 30, top: 20, bottom: 20, right: 20),
      child: Column(
        children: [
          Container( // the gradient border
            width: 80,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 144, 99, 1),
                    Color.fromRGBO(112, 79, 254, 1)
                  ]),
              borderRadius: BorderRadius.circular(24),
            ),
            //头像容器
            child: Container( // part of the border
              width: 76,
              height: 76,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: color_theme.roundedPageColor,
              ),
              child: Container( // the avatar
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                      ))),
            ),
          ),
          Container(
            child: Align(alignment: Alignment.center, child: Text("Lucas")),
          ),
          Container(
            child:
                Align(alignment: Alignment.center, child: Text("(Australia)")),
          ),
        ],
      ),
    );
  }
}*/
/*
class _user1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // the gradient border
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(255, 144, 99, 1),
                          Color.fromRGBO(112, 79, 254, 1)
                        ]),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  //头像容器
                  child: Container(
                    // part of the border
                    width: 76,
                    height: 76,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: color_theme.roundedPageColor,
                    ),
                    child: Container(
                        // the avatar
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                            ))),
                  ),
                ),
              ),
              const Icon(
                Icons.rectangle,
                color: Colors.red,
                size: 35,
              ),
            ],
          ),
        ),
        Container(
          child: Align(alignment: Alignment.center, child: Text("Lucas")),
        ),
        Container(
          child:
              Align(alignment: Alignment.center, child: Text("(Australia)")),
        ),
      ],
    );
  }
}

class _user2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
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
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://img.seadn.io/files/9072515dcfab126cfcdfa87a87ba9325.png?fit=max&w=600"),
                    )),
              ),
            ),
          ),
          Container(
            child:
                Align(alignment: Alignment.center, child: Text("Chunbin Wang")),
          ),
          Container(
            child: Align(alignment: Alignment.center, child: Text("(China)")),
          ),
        ],
      ),
    );
  }
}

class _user3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
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
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://img.seadn.io/files/fcd874ec3b0315dee72ccd4927d0d9bc.png?fit=max&w=600"),
                    )),
              ),
            ),
          ),
          Container(
            child: Align(alignment: Alignment.center, child: Text("Henderi")),
          ),
          Container(
            child: Align(alignment: Alignment.center, child: Text("(France)")),
          ),
        ],
      ),
    );
  }
}
*/
