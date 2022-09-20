import 'package:flutter/material.dart';

class  TravelChannelWidget extends StatefulWidget {
  const TravelChannelWidget({Key? key}) : super(key: key);

  @override
  State<TravelChannelWidget> createState() => _TravelChannelWidget();
}

class _TravelChannelWidget extends State<TravelChannelWidget> {
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
                  children: [
                    Text("\n    MAKE SOME NEW FRIENDS WHO ENJOY TRAVEL HERE!")
                  ],
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
                  children: [new topic1()],
                ),
              ),
               Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new topic2()],
                ),
              ),
               Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new topic3()],
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
            child: Align(alignment: Alignment.center, child: Text("🇺🇸")),
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
            child: Align(alignment: Alignment.center, child: Text("🇫🇷")),
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
            child: Align(alignment: Alignment.center, child: Text("🇮🇹")),
          ),
        ],
      ),
    );
  }
}

class topic1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: 330,
            height: 300,
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
                width: 1000,
                height: 1000,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://a.cdn-hotels.com/gdcs/production65/d1094/007d42a5-84e4-418e-a07d-a020fe670a43.jpg"),
                    )),
                     child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("PLACES AROUND UQ",
                        style:TextStyle(
                        fontSize:30.0, // 文字大小
                        color:Colors.white, // 文字颜色
                        ),
                        ),
                      ),
                    ),
              ),
            ),
          ),
          // Container(
          //   child: Align(alignment: Alignment.center, child: Text("ART show in QueensLand!")),
          // ),
          // Container(
          //   child: Align(alignment: Alignment.center, child: Text("❤️ 128 👍 66 💬 78")),
          // ),
        ],
      ),
    );
  }
}

class topic2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: 330,
            height: 300,
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
                width: 1000,
                height: 1000,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.technogym.com/wpress/wp-content/uploads/2019/01/trekking-hiking-FB.jpg"),
                    )),
                      child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("WILD ADVENTURE",
                        style:TextStyle(
                        fontSize:30.0, // 文字大小
                        color:Colors.white, // 文字颜色
                        ),
                        ),
                      ),
                    ),
              ),
            ),
          ),
          // Container(
          //   child: Align(alignment: Alignment.center, child: Text("WHAT IS EKKA?")),
          // ),
          //  Container(
          //   child: Align(alignment: Alignment.center, child: Text("❤️ 128 👍 66 💬 78")),
          // ),
        ],
      ),
    );
  }
}


class topic3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: 330,
            height: 300,
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
                width: 1000,
                height: 1000,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://a.cdn-hotels.com/gdcs/production180/d1647/96f1181c-6751-4d1b-926d-e39039f30d66.jpg?impolicy=fcrop&w=800&h=533&q=medium"),
                    )),
                      child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("BEACH",
                        style:TextStyle(
                        fontSize:30.0, // 文字大小
                        color:Colors.white, // 文字颜色
                        ),
                        ),
                      ),
                    ),
              ),
            ),
          ),
          // Container(
          //   child: Align(alignment: Alignment.center, child: Text("HI! COME TO VISIT THE MUESUM\n\n#Asain\n#9PM")),
          // ),
          // Container(
          //   child: Align(alignment: Alignment.center, child: Text("❤️ 128 👍 66 💬 78")),
          // ),
        ],
      ),
    );
  }
}

