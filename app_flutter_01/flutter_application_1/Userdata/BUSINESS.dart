import 'package:flutter/material.dart';

class   BusinessChannelWidget extends StatefulWidget {
  const BusinessChannelWidget({Key? key}) : super(key: key);

  @override
  State<BusinessChannelWidget> createState() => _BusinessChannelWidget();
}

class _BusinessChannelWidget extends State<BusinessChannelWidget> {
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
                    Text("\n    MAKE SOME NEW FRIENDS WHO LOVE BUSINESS HERE!")
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new _user1(), new _user3()],
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
                width: 800,
                height: 800,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://image.cnbcfm.com/api/v1/image/104225995-_95A5004.jpg?v=1540458420"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("WHAT'S NEW TODAY",
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
          //   child: Align(alignment: Alignment.center, child: Text("What about Billions?")),
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
                width: 800,
                height: 800,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://ichef.bbci.co.uk/news/640/mcs/media/images/72192000/jpg/_72192176_thewolfofwallstreet001.jpg"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("STOCK",
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
                width: 800,
                height: 800,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://p7.itc.cn/images01/20211029/78d8f23f34de40dcb786d137df102ff6.jpeg"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("WEB 3.0",
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

