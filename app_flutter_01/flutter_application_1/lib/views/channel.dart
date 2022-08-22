import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/notice.dart';
import 'package:flutter_application_1/_routing/router.dart';
import 'package:flutter_application_1/_routing/routes.dart';




class ChannelPage extends StatefulWidget {
  const ChannelPage({Key? key}) : super(key: key);

  @override
  State<ChannelPage> createState() => _ChannelPage();
}

class _ChannelPage extends State<ChannelPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
            //notice icon
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, noticeViewRoute);
                },
                
                icon: const Icon(Icons.notifications),
                iconSize: 40,
                padding: const EdgeInsets.all(19.0)
              )
            ],
            //title
            title: const Text(
              "Channel",
              //stule of title
              style: TextStyle(
                color: Color.fromRGBO(108, 95, 188, 1),
                fontSize: 34,
                height: 2.5,
              ),
            ),
            backgroundColor: Color.fromRGBO(188, 169, 255, 1)),
        preferredSize: Size.fromHeight(100),
      ),
      body: Text('Channel'),
      backgroundColor: Color.fromRGBO(243, 241, 255, 1),
    );
  }
}
