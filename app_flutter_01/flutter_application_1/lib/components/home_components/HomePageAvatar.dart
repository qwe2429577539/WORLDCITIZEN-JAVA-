import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
    as color_theme;
import 'package:flutter_application_1/components/CustomizedWidget.dart'
as customized_widget;

class HomePageAvatar extends StatelessWidget {
  // TODO pass in the person's information used to build the widget
  final int userIndex;
  const HomePageAvatar({Key? key, required this.userIndex}) : super(key: key);

  Widget _user(
      String name, String country, String img, Widget flag, bool online) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customized_widget.avatar(img, online),
              ),
              flag,
            ],
          ),
        ),
        Align(alignment: Alignment.center, child: Text(name)),
        Align(alignment: Alignment.center, child: Text("($country)")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget ans;
    switch (userIndex) {
      case 1:
        {
          ans = _user(
              "Lucas",
              "Australia",
              "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600",
              Icon(
                Icons.rectangle,
                color: Colors.blue[900],
                size: 35,
              ),
              true);
        }
        break;
      case 2:
        {
          ans = _user(
              "Donald Trump",
              "China",
              "https://img.seadn.io/files/9072515dcfab126cfcdfa87a87ba9325.png?fit=max&w=600",
              const Icon(
                Icons.rectangle,
                color: Colors.red,
                size: 35,
              ),
              true);
        }
        break;
      default:
        {
          ans = _user(
              "Henderi",
              "France",
              "https://img.seadn.io/files/fcd874ec3b0315dee72ccd4927d0d9bc.png?fit=max&w=600",
              Icon(
                Icons.rectangle,
                color: Colors.indigo[900],
                size: 35,
              ),
              false);
        }
    }
    return ans;
  }
}
