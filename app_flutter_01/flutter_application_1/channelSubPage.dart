/**
 * channel Sub page
 */

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/Userdata/Homepage_friends_data.dart';

import '../Userdata/ART.dart';
import '../Userdata/BUSINESS.dart';
import '../Userdata/PARTY.dart';
import '../Userdata/STUDY.dart';
import '../Userdata/TRAVEL.dart';

class ChannelSubPage extends StatefulWidget {
  const ChannelSubPage({Key? key}) : super(key: key);

  @override
  State<ChannelSubPage> createState() => _ChannelSubPage();
}

class _ChannelSubPage extends State<ChannelSubPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, //长度需要对应tab数量，对应tabviewlist中的view的数量
      child: Scaffold(
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
            "Channels",
            //stule of title

            style: TextStyle(
              color: Color.fromRGBO(108, 95, 188, 1),
              fontSize: 28,
              height: 2,
            ),
          ),

          toolbarHeight: 160,
          backgroundColor: Color.fromRGBO(188, 169, 255, 1),
          elevation: 0,

          bottom: TabBar(
            isScrollable: true,
            padding: const EdgeInsets.all(20.0),
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              color: Color.fromRGBO(108, 95, 188, 1),
              borderRadius: BorderRadius.circular(50),
            ),
            tabs: [
              new Container(
                width: 100,
                height: 100,
                child: Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                      image: NetworkImage(
                        "https://familynews.today/wp-content/uploads/2022/05/GG.jpg"),
                    ),
                      border: Border.all(
                        color: Color.fromRGBO(108, 95, 188, 1),
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("ART🖌️"),
                    ),
                  ),
                ),
              ),
              new Container(
                width: 100,
                height: 100,
                child: Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color.fromRGBO(108, 95, 188, 1),
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                          "BUSINESS💼"),
                    ),
                  ),
                ),
              ),
              new Container(
                width: 100,
                height: 100,
                child: Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color.fromRGBO(108, 95, 188, 1),
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                         "PARTY🎈"),
                    ),
                  ),
                ),
              ),
              new Container(
                width: 100,
                height: 100,
                child: Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color.fromRGBO(108, 95, 188, 1),
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                         "STUDY📖"),
                    ),
                  ),
                ),
              ),
              new Container(
                width: 100,
                height: 100,
                child: Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color.fromRGBO(108, 95, 188, 1),
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("TRAVEL🌴"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const ArtChannelWidget(),
            const BusinessChannelWidget(),
            const PartyChannelWidget(),
            const StudyChannelWidget(),
            const TravelChannelWidget(),
          ],
        ),
      ),
    );
     
  }
}


class _HomeWeight extends StatelessWidget {
  const _HomeWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color.fromRGBO(243, 241, 255, 1),
              child: const Center(
                child: Text('Above'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              child: const Center(
                child: Text('Below'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
