import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/joincourse_components/Department.dart';

class DeptButton extends StatelessWidget {
  final Department department;
  final void Function() press;

  const DeptButton({Key? key, required this.department, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      // on Tap a page slide up TODO
      onTap: press,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // The background button & department text name
          Padding(
            padding: EdgeInsets.fromLTRB(8, 3, 8, 0),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(108, 95, 188, 1),
                borderRadius: BorderRadius.circular(35),
                border: Border.all(
                  color: Colors.white.withOpacity(0.3),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    // offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              alignment: Alignment(0.0, 0.9),
              child: Text(department.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: department.textSize,
                  )),
            ),
          ),

          // the department icon
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                department.image,
                width: size.width / 4,
              ),
              SizedBox(height: 30),
            ],
          )
        ],
      ),
    );
  }
}
