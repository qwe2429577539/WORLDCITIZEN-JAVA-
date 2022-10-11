import 'package:flutter/material.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
    as color_theme;
import 'package:flutter_application_1/components/CustomizedWidget.dart'
    as customized_widget;

class TopicCard extends StatelessWidget {
  final String topic;
  final String description;

  const TopicCard({Key? key, required this.topic, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 15),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // background
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Container(
              width: size.width,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(23),
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
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // the left icon
              Container(
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.only(left: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color_theme.topicImgBG,
                      boxShadow: [
                        BoxShadow(
                          color: color_theme.notificationBorder,
                          spreadRadius: 1,
                          blurRadius: 2,
                        ),
                      ]),
                  child: const Icon(
                    Icons.apartment,
                    color: color_theme.notificationDark,
                    size: 40,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  width: 215,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          topic,
                          style: TextStyle(
                            color: color_theme.notificationDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            description,
                            style: TextStyle(
                                fontSize: 14, color: color_theme.tagColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: color_theme.buttonDark,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: color_theme.buttonDark,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(-1, 0), // changes position of shadow
                        ),
                      ]),
                  child: const Icon(
                    Icons.arrow_forward_sharp,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                onTap: () => Navigator.pushNamed(context, channelSubtopicViewRoute),
              ),
            ],
          )
        ],
      ),
    );
  }
}
