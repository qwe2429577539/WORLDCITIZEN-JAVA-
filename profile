import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/_routing/router.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/subpage/add_tag_profile.dart';

/**
 * Profile
 *
 */
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  //数据

  final titleController = TextEditingController();

  //只用了一个
  String text = "No Value Entered";

  void _setText() {
    setState(() {
      text = titleController.text;
      labels.add(text);
    });
  }


  List<String> labels = ["music", "video"];

  //姓名和头像
  Widget nameImg = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, //x 两端分布
    children: [
      Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 10),
        // alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text(
                    'Tom',
                    style: new TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white38),
                  ),
                  Icon(
                    Icons.flag,
                    color: Colors.red,
                  ),
                ],
              ),
            ), //Tom Flag
            Text(
              'From China',
              style: new TextStyle(
                color: Colors.white38,
              ),
            ), //From China
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 10),
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
    ],
  );

  //
  Widget titleSection = new Container(
    padding: const EdgeInsets.symmetric(horizontal: 32.0),
    child: new Row(
      children: [
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(
                '',
                style: new TextStyle(
                  color: Colors.white38,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget aboutMe = new Container(
    padding: const EdgeInsets.fromLTRB(32.0, 0, 32, 0),
    child: new Row(
      children: [
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                child: new Text(
                  'About me',
                  style: new TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white38,
                  ),
                ),
              ),
              new Text(
                'Master of IT, interested in western culture',
                style: new TextStyle(
                  color: Colors.white38,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  //标签文本
  Widget labelTags1(BuildContext context) {
    return Container(
      // width:20,
      // height: 30,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            children: [
              //Tag 1  ---- 模板
              for (int i = 0; i < labels.length; i++)
                Container(
                  child: Text(
                    (labels[i]),
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(right: 8, top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),

              // TextField(
              //   textAlign: TextAlign.center,
              //   decoration: new InputDecoration(
              //     hintText: ('#music'),
              //     focusColor: Colors.red,
              //     border: new OutlineInputBorder(
              //       borderRadius: const BorderRadius.all(
              //         const Radius.circular(20.0),
              //       ),
              //       borderSide: new BorderSide(
              //         color: Colors.white60,
              //         width: 0.0,
              //       ),
              //     ),
              //   ),
              // ),

              //Button 触摸开关
              Container(
                margin: EdgeInsets.only(right: 8, top: 5),
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => AddTagPage()));
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        // title: const Text(
                        //   '',
                        // ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(
                                Radius.circular(20.0))),

                        content: TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Enter tag'),
                        ),

                        actions: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.pop(context, 'Cancel');
                            },
                            child: Container(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  color: Color.fromRGBO(108, 95, 188, 1),
                                ),
                              ),
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(
                                      color: Color.fromRGBO(108, 95, 188, 1))),
                            ),
                          ),

                          // TextButton(
                          //   onPressed: () => Navigator.pop(context, 'Delete'),
                          //   child: const Text('Delete'),
                          // ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context, 'Delete');
                            },
                            child: Container(
                              child: Text(
                                "Delete",
                                style: TextStyle(
                                  color: Color.fromRGBO(108, 95, 188, 1),
                                ),
                              ),
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(
                                      color: Color.fromRGBO(108, 95, 188, 1))),
                            ),
                          ),

                          InkWell(
                            onTap: () {
                              _setText();
                              Navigator.pop(context, "  save  ");
                            },
                            child: Container(
                              child: Text(
                                '  Save  ',
                                style: TextStyle(
                                  color: Color.fromRGBO(108, 95, 188, 1),
                                ),
                              ),
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(
                                      color: Color.fromRGBO(108, 95, 188, 1))),
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                    // Navigator.pushNamed(context, addTagProfileViewRoute);
                    print("add label");
                  },
                  child: Container(
                    child: Text(
                      " + ",
                      style: TextStyle(color: Colors.white),
                    ),
                    // color: Colors.transparent,

                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      shape: BoxShape.rectangle,
                      // border: Border.all(color: Colors.white38, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  //标签文本
  Widget labelTags(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30),
        shrinkWrap: true,
        //解决无限高度问题
        physics: NeverScrollableScrollPhysics(),
        //禁用滑动事件
        // primary: false,
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        itemBuilder: (context, index) {
          return Container(
            width: 60,
            height: 40,
            child: Text(
              "#${labels[index]}",
              style: TextStyle(color: Colors.white),
            ),
            // color: Colors.transparent,

            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(right: 8),

            decoration: BoxDecoration(
              color: Colors.white24,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          );
        });
  }

  //调用接口回来的内容
  Widget contentView = new Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.white30,
      // border: Border.all(color: Colors.black, width: 2.0),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      // image: DecorationImage(
      //   image: AssetImage('assets/images/ic_home_school1.png'),
      //   // NetworkImage(imgUrl),
      // ),
    ),
    child: Column(
      children: [
        //My Posts   apps  list
        Row(
          children: [
            SizedBox(width: 20),
            Text("My Posts",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.apps)),
            IconButton(onPressed: () {}, icon: Icon(Icons.list)),
            SizedBox(width: 20),
          ],
        ),
        //item
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: '@ART   2022/09/13',
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(""),
              //color: Colors.transparent,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image:
                      //AssetImage('assets/images/ic_home_school1.png'),
                      NetworkImage(
                          ""),
                ),
              ),
              // onPressed: () {
              //   // Navigator.of(context)
              //   //     .push(MaterialPageRoute(builder: (context) => Search()));
              // },
            ),
            SizedBox(height: 15),
          ],
        ),
        //item
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: '@CHINESE CULTURE   2022/09/12',
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: '',
                ),
              ),
              // color: Colors.transparent,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image:
                      //AssetImage('assets/images/ic_home_school1.png'),
                      NetworkImage(
                          "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                ),
              ),
              // onPressed: () {
              //   // Navigator.of(context)
              //   //     .push(MaterialPageRoute(builder: (context) => Search()));
              // },
            ),
            SizedBox(height: 15),
          ],
        ), //item
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: '@ASIAN LITERATURE   2022/09/12',
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, labelText: ""),
              ),
              // color: Colors.transparent,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: //AssetImage('assets/images/ic_home_school1.png'),
                      NetworkImage(
                          "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                ),
              ),
              // onPressed: () {
              //   // Navigator.of(context)
              //   //     .push(MaterialPageRoute(builder: (context) => Search()));
              // },
            ),
            SizedBox(height: 15),
          ],
        ),
      ],
    ),
  );

  //
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
          "Profile",
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
      body: ListView(scrollDirection: Axis.vertical,
          // shrinkWrap: true,                               //解决无限高度问题
          // physics:  NeverScrollableScrollPhysics(),        //禁用滑动事件
          children: [
            // for(int i=0; i<labels.length; i++)
            //   Text("#${labels[i]}"),
            nameImg,
            // SizedBox(height: 20),
            // titleSection,
            aboutMe,
            labelTags1(context),
            // Expanded(child: labelTags(context)),
            contentView,
          ]),
      backgroundColor: Color.fromRGBO(188, 169, 255, 1),
    );
  }
}
//
