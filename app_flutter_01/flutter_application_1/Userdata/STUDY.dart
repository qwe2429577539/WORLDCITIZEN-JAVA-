import 'package:flutter/material.dart';

class  StudyChannelWidget extends StatefulWidget {
  const StudyChannelWidget({Key? key}) : super(key: key);

  @override
  State<StudyChannelWidget> createState() => _StudyChannelWidget();
}

class _StudyChannelWidget extends State<StudyChannelWidget> {
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
                    Text("\n    MAKE SOME NEW FRIENDS WHO LOVE STUDY HERE!")
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [new _user2(), new _user3()],
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
                          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/21/75/2c/new-york-public-library.jpg?w=1200&h=-1&s=1"),
                    )),
                     child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("LIBARY in UQ",
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
                          "https://www.nottingham.ac.uk/studentservices/images/services/assessment-and-examinations/examinations3-cropped-1000x666.jpg"),
                    )),
                     child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("FINAL EXAM",
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
                          "https://www.eaie.org/.imaging/mte/eaie-theme/width-820-not-expanding/dam/images/blog-images/2014/2014-06-20.jpg/jcr:content/2014-06-20.jpg"),
                    )),
                     child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("DISSCUSSION",
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

