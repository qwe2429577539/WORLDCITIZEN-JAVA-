import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/joincourse_components/Department.dart';

class DeptButton extends StatelessWidget {
  final Department department;
  final void Function() press;

  const DeptButton({Key? key, required this.department, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // The background button & department text name
          Padding(
            padding: const EdgeInsets.fromLTRB(9, 3, 9, 0),
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(35),
                border: Border.all(
                  color: Colors.white.withOpacity(0.17),
                  width: 1,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(9, 9, 19, 0.14),
                    spreadRadius: 2,
                    blurRadius: 14,
                    // offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              alignment: const Alignment(0.0, 0.9),
              child: Text(department.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                    fontSize: department.textSize,
                  )),
            ),
          ),

          // the department icon
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        department.image,
                        width: size.width / 4.2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Image.asset(
                        department.image,
                        width: size.width / 4.2,
                      ),
                    ),
                  )
                ],
              ),
              // TODO SizedBox could be useless
              const SizedBox(height: 30),
            ],
          )
        ],
      ),
    );
  }
}
