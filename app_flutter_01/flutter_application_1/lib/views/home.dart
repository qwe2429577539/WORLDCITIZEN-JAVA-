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
    return DefaultTabController(
      length: 4,
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
              "Home",
              //stule of title
              style: TextStyle(
                color: Color.fromRGBO(108, 95, 188, 1),
                fontSize: 34,
                height: 2,
              ),
            ),
          toolbarHeight: 110,
          backgroundColor:Color.fromRGBO(188, 169, 255, 1),
          elevation: 0,
          bottom: TabBar(
            isScrollable: true,
            padding: const EdgeInsets.all(20.0),
            unselectedLabelColor:Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicator:BoxDecoration(
              color:Color.fromRGBO(108, 95, 188, 1),
              borderRadius:BorderRadius.circular(50),
            ),
            tabs: [
              new Container(
              width: 100,
              child: Tab(
                
                child:Container(
                  width: 100,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                    border:Border.all(color:Color.fromRGBO(108, 95, 188, 1),
                      width:1,
                    ),
                  ),
                  child:Align(
                    
                    alignment:Alignment.center,
                    child:Text("Friends"),
                  ),
                ),
              ),
              ),
              new Container(
                width: 100,
                child: Tab(
                child:Container(
                  width: 100,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                    border:Border.all(color:Color.fromRGBO(108, 95, 188, 1),
                      width:1,
                    ),
                  ),
                  child:Align(
                    alignment:Alignment.center,
                    child:Text("Deco7381"),
                  ),
                ),
              ),
              ),
              new Container(
                width: 100,
                child: Tab(
                child:Container(
                  width: 100,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                    border:Border.all(color:Color.fromRGBO(108, 95, 188, 1),
                      width:1,
                    ),
                  ),
                  child:Align(
                    alignment:Alignment.center,
                    child:Text("Deco7180"),
                  ),
                ),
              ),
              ),
              
              new Container(
                width: 100,
                child: Tab(
                child:Container(
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                    border:Border.all(color:Color.fromRGBO(108, 95, 188, 1),
                      width:1,
                    ),
                  ),
                  child:Align(
                    alignment:Alignment.center,
                    child:Icon(Icons.add),
                  ),
                ),
              ),
              ),
              
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const _HomeWeight(),
            Icon(Icons.movie),
            Icon(Icons.games),
            Icon(Icons.games),
            
            
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
