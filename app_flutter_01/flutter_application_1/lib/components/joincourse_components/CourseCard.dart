import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String courseCode, semesterYear;
  // int headCount;
  // bool joined;
  // List<String> avatarImagesAddress;

  const CourseCard(
      {Key? key, required this.courseCode, required this.semesterYear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO should pass in the Student
    return SizedBox(
        height: 175,
        child: Card(
            elevation: 2,
            shadowColor: Colors.deepPurpleAccent,
            borderOnForeground: false,
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 20, 10),
                child: Column(children: <Widget>[
                  // course code, semester, avatars
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            courseCode,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            semesterYear,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(width: size.width / 2, child: courseAvatars())
                    ],
                  ),
                  const Spacer(),

                  // the button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      joinButton(),
                    ],
                  )
                ]))));
  }

  Widget courseAvatars() {
    const avatarLength = 35.0;
    var boxRadius = BorderRadius.circular(10);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Center(
          child: Container(
            width: avatarLength,
            height: avatarLength,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                borderRadius: boxRadius,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                )),
          ),
        ),
        Center(
          child: Container(
            width: avatarLength,
            height: avatarLength,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                borderRadius: boxRadius,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                )),
          ),
        ),
        Center(
          child: Container(
            width: avatarLength,
            height: avatarLength,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                borderRadius: boxRadius,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
                )),
          ),
        ),
        Container(
          width: avatarLength,
          height: avatarLength,

          decoration: BoxDecoration(
            color: const Color.fromRGBO(108, 95, 188, 1),
            borderRadius: boxRadius,
          ),
          // margin: const EdgeInsets.only(right: 5),
          child: Center(
            child: Text(
              "+${enrollmentNum() - 3}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget joinButton() {
    const padn = EdgeInsets.fromLTRB(24, 3.5, 24, 3.5);
    var borderAll = Border.all(
      color: const Color.fromRGBO(108, 95, 188, 1),
      width: 3,
    );

    if (isJoined()) {
      return GestureDetector(
        onTap: null, // TODO drop courses?
        child: Container(
          // margin: marginR,
          padding: padn,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(25),
              border: borderAll),
          child: const Center(
            child: Text("Open",
                style: TextStyle(
                  // TODO use mono font family
                  color: Color.fromRGBO(108, 95, 188, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: () {}, // TODO Join Course & make the button to be "open"
      child: Container(
        // margin: marginR,
        padding: padn,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(108, 95, 188, 1),
            borderRadius: BorderRadius.circular(25),
            border: borderAll),
        child: const Center(
          child: Text("Join",
              style: TextStyle(
                // TODO use mono font family
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ),
    );
  }

  int enrollmentNum() {
    //  TODO retrieve the number
    return 203;
  }

  bool isJoined() {
    //  TODO should pass in the Student to check if he is enrolled
    return false;
  }
}
