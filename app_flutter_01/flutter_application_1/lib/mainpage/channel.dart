/**
 * channel page
 */

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/Userdata/Homepage_friends_data.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
    as color_theme;
import 'package:flutter_application_1/components/CustomizedWidget.dart'
    as customized_widget;
import 'package:flutter_application_1/components/channels_components/RecommendFriendsCard.dart';
import 'package:flutter_application_1/components/channels_components/TopicCard.dart';

import '../Userdata/ART.dart';
import '../Userdata/BUSINESS.dart';
import '../Userdata/PARTY.dart';
import '../Userdata/STUDY.dart';
import '../Userdata/TRAVEL.dart';

class ChannelPage extends StatefulWidget {
  const ChannelPage({Key? key}) : super(key: key);

  @override
  State<ChannelPage> createState() => _ChannelPage();
}

class _ChannelPage extends State<ChannelPage> {
  List<String> recommendFriends() {
    List<String> ans = [];
    ans.add("Donald Trump");
    ans.add("Joe Biden");
    ans.add("James Bourne");
    return ans;
  }

  List<String> topics = ["Art", "Business", "Party"];
  List<String> descriptions = ["All about art, culture and design",
    "Read all about business and how to process money properly",
    "Make some new friends who like party"
  ];
  @override
  Widget build(BuildContext context) {
    List<String> friendSuggestion = recommendFriends();
    return Container(
      decoration: color_theme.backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customized_widget.mainPageAppBar(context, "Channels"),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customized_widget.divider,
              // subtitle Make a Friend
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Make a friend",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),

              // friends suggestion horizontal scroll
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 310,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: friendSuggestion.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: RecommendFriendsCard(
                            name: friendSuggestion[index]),
                      );
                    },
                  ),
                ),
              ),

              // subtitle Topics
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                child: Text(
                  "Topics",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),

              //  Topics vertical list
              Flexible(
                child: ListView.builder(
                    itemCount: topics.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(bottom: 10),
                    itemBuilder: (_, index) => TopicCard(topic: topics[index], description: descriptions[index])),
              )
            ],
          ),
        ),
      ),
    );
    // return DefaultTabController(
    //   length: 5, //长度需要对应tab数量，对应tabviewlist中的view的数量
    //   child: Scaffold(
    //     appBar: AppBar(
    //       actions: [
    //         IconButton(
    //             onPressed: () {
    //               Navigator.pushNamed(context, noticeViewRoute);
    //             },
    //             icon: const Icon(Icons.notifications),
    //             iconSize: 40,
    //             padding: const EdgeInsets.all(20.0))
    //       ],
    //       //title
    //       title: const Text(
    //         "Channels",
    //         //stule of title
    //
    //         style: TextStyle(
    //           color: Color.fromRGBO(108, 95, 188, 1),
    //           fontSize: 28,
    //           height: 2,
    //         ),
    //       ),
    //
    //       toolbarHeight: 160,
    //       backgroundColor: Color.fromRGBO(188, 169, 255, 1),
    //       elevation: 0,
    //
    //       bottom: TabBar(
    //         isScrollable: true,
    //         padding: const EdgeInsets.all(20.0),
    //         unselectedLabelColor: Colors.white,
    //         indicatorSize: TabBarIndicatorSize.label,
    //         indicator: BoxDecoration(
    //           color: Color.fromRGBO(108, 95, 188, 1),
    //           borderRadius: BorderRadius.circular(50),
    //         ),
    //         tabs: [
    //           new Container(
    //             width: 100,
    //             height: 100,
    //             child: Tab(
    //               child: Container(
    //                 width: 100,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(50),
    //                   image: DecorationImage(
    //                     image: NetworkImage(
    //                         "https://familynews.today/wp-content/uploads/2022/05/GG.jpg"),
    //                   ),
    //                   border: Border.all(
    //                     color: Color.fromRGBO(108, 95, 188, 1),
    //                     width: 1,
    //                   ),
    //                 ),
    //                 child: Align(
    //                   alignment: Alignment.center,
    //                   child: Text("ART🖌️"),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           new Container(
    //             width: 100,
    //             height: 100,
    //             child: Tab(
    //               child: Container(
    //                 width: 100,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(50),
    //                   border: Border.all(
    //                     color: Color.fromRGBO(108, 95, 188, 1),
    //                     width: 1,
    //                   ),
    //                 ),
    //                 child: Align(
    //                   alignment: Alignment.center,
    //                   child: Text("BUSINESS💼"),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           new Container(
    //             width: 100,
    //             height: 100,
    //             child: Tab(
    //               child: Container(
    //                 width: 100,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(50),
    //                   border: Border.all(
    //                     color: Color.fromRGBO(108, 95, 188, 1),
    //                     width: 1,
    //                   ),
    //                 ),
    //                 child: Align(
    //                   alignment: Alignment.center,
    //                   child: Text("PARTY🎈"),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           new Container(
    //             width: 100,
    //             height: 100,
    //             child: Tab(
    //               child: Container(
    //                 width: 100,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(50),
    //                   border: Border.all(
    //                     color: Color.fromRGBO(108, 95, 188, 1),
    //                     width: 1,
    //                   ),
    //                 ),
    //                 child: Align(
    //                   alignment: Alignment.center,
    //                   child: Text("STUDY📖"),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           new Container(
    //             width: 100,
    //             height: 100,
    //             child: Tab(
    //               child: Container(
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(50),
    //                   border: Border.all(
    //                     color: Color.fromRGBO(108, 95, 188, 1),
    //                     width: 1,
    //                   ),
    //                 ),
    //                 child: Align(
    //                   alignment: Alignment.center,
    //                   child: Align(
    //                     alignment: Alignment.center,
    //                     child: Text("TRAVEL🌴"),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     body: TabBarView(
    //       children: [
    //         const ArtChannelWidget(),
    //         const BusinessChannelWidget(),
    //         const PartyChannelWidget(),
    //         const StudyChannelWidget(),
    //         const TravelChannelWidget(),
    //       ],
    //     ),
    //   ),
    // );
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
