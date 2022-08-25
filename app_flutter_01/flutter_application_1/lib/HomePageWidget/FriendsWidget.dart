import 'package:flutter/material.dart';

class FriendsWidget extends StatefulWidget {
  const FriendsWidget({Key? key}) : super(key: key);

  @override
  State<FriendsWidget> createState() => _FriendsWidget();
}

class _FriendsWidget extends State<FriendsWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color.fromRGBO(188, 169, 255, 1),
      child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(243, 241, 255, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
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
    );
  }
}

class _user1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 30, top: 20, bottom: 20, right: 20),
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
                          "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                    )),
              ),
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
