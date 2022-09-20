import 'package:flutter/material.dart';

class  PartyChannelWidget extends StatefulWidget {
  const PartyChannelWidget({Key? key}) : super(key: key);

  @override
  State<PartyChannelWidget> createState() => _PartyChannelWidget();
}

class _PartyChannelWidget extends State<PartyChannelWidget> {
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
                    Text("\n    MAKE SOME NEW FRIENDS WHO LIKE PARTY HERE!")
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new _user3()],
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
                          "https://ac-a.static.booking.cn/xdata/images/hotel/max1024x768/310722194.jpg?k=473d7bc5ab162c83edda070daef61ccc15e95a574984beb55de9e1f7784dcb41&o=&hp=1"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("BEST PARTY LOCATION",
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
                width: 800,
                height: 800,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.londonandpartners.com/asset/nobu-shoreditch_image-courtesy-of-nobu_0d57fed92e672ae9ccb17fc7af263ed9.jpg"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("PARTY FOOD",
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
                          "https://cdn.shopify.com/s/files/1/1216/2612/articles/Five_kinds_of_classic_cocktails_1200x.jpg?v=1631787354"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("DRINKS",
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

