import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/notice.dart';
import 'package:flutter_application_1/_routing/router.dart';
import 'package:flutter_application_1/_routing/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child:AppBar(
            //notice icon
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, noticeViewRoute);
                  },
                  icon: const Icon(Icons.notifications),
                  iconSize: 40,
                  padding: const EdgeInsets.all(19.0))
            ],
            //title
            title: const Text(
              "Home",
              //stule of title
              style: TextStyle(
                color: Color.fromRGBO(108, 95, 188, 1),
                fontSize: 34,
                height: 2.5,
              ),
            ),
            backgroundColor: Color.fromRGBO(188, 169, 255, 1)),
        preferredSize: Size.fromHeight(70),
      ),
      body: const _HomeWeight(),
      backgroundColor: Color.fromRGBO(243, 241, 255, 1),
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
          const Divider(
            height: 2,
            thickness: 2,
            color: Colors.black,
          ),
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
