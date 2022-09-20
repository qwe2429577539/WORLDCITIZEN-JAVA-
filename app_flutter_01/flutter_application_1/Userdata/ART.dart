import 'package:flutter/material.dart';

class ArtChannelWidget extends StatefulWidget {
  const ArtChannelWidget({Key? key}) : super(key: key);

  @override
  State<ArtChannelWidget> createState() => _ArtChannelWidget();
}

class _ArtChannelWidget extends State<ArtChannelWidget> {
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
                    Text("\n    MAKE SOME NEW FRIENDS WHO LOVE ART HERE!")
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
          Container(
            child: Align(alignment: Alignment.center, child: Text("#ASAIN")),
          ),
           Container(
            child: Align(alignment: Alignment.center, child: Text("#EMO")),
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
           Container(
            child: Align(alignment: Alignment.center, child: Text("#ASAIN")),
          ),
           Container(
            child: Align(alignment: Alignment.center, child: Text("#BLOND")),
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
           Container(
            child: Align(alignment: Alignment.center, child: Text("#ASAIN")),
          ),
           Container(
            child: Align(alignment: Alignment.center, child: Text("#SINGLE")),
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
                          "https://d2u3kfwd92fzu7.cloudfront.net/asset/cms/Art_Basel_Hong_Kong_2022_Lead_Image_2-2-1.jpg"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("ART WORKS",
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
                          "https://happymag.tv/wp-content/uploads/2020/04/frank-ocean.jpg"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("ARTISTS",
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
                          "https://media-exp1.licdn.com/dms/image/C561BAQE84f8UfRk4pQ/company-background_10000/0/1552627369319?e=2147483647&v=beta&t=iEKPMGbdNuSdRQjSJUKo6OgsYCVCQv92kaj7ULSTgzM"),
                    )),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("MESUEM AROUND QLD",
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

