import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
    as color_theme;
import 'package:flutter_application_1/components/CustomizedWidget.dart'
    as customized_widget;

class RecommendFriendsCard extends StatelessWidget {
  final String name;
  // int headCount;
  // bool joined;
  // List<String> avatarImagesAddress;

  const RecommendFriendsCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      "#music",
      "#martial arts",
      "#python",
      "#machine learning",
      "#design"
    ];
    // TODO should pass in the Student
    return SizedBox(
        height: 310,
        width: 280,
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white.withOpacity(0.4),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 14,
                  // offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      friendInfo(),

                      // suggestion message
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "Team Formation For DECO 7381",
                          style: TextStyle(
                            color: color_theme.notificationDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),

                      // TODO many tags
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          for (int i = 0; i < labels.length; i++)
                            Container(
                              child: Text(
                                (labels[i]),
                                style: TextStyle(color: Colors.white.withOpacity(0.85)),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 7),
                              decoration: BoxDecoration(
                                  color: color_theme.tagColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: color_theme.tagShadow,
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      // offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ]),
                            )
                        ],
                      )
                    ]))));
  }

  Widget friendInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // the avatar
        customized_widget.avatarForChannel(
            "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600",
            true),

        // the text
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: color_theme.notificationDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.rectangle,
                      color: Colors.red,
                      size: 25,
                    )
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "From America",
                  style: TextStyle(
                      fontSize: 10, color: color_theme.notificationBorder),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
