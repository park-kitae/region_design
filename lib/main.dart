import 'package:flutter/material.dart';
import 'package:region_design/list/MainListPage.dart';
import 'package:region_design/list/LocationListPage.dart';
import 'package:region_design/list/SearchListPage.dart';
import 'package:region_design/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    String font_family = 'Varela';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'RegionNews',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black54,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black54,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginScreen(
                  ))
              );
            },
          ),
        ],
      ),
      body: Container(
        child:
          Column(
            children: <Widget>[
            //Text('안녕 Nickname!', style: TextStyle(fontFamily: font_family, fontSize: 25.0, fontWeight: FontWeight.bold)),
            //Text('오늘의 이슈를 확인하세요', style: TextStyle(fontFamily: font_family, fontSize: 20.0, fontWeight: FontWeight.bold)),
            //SizedBox(height: 20.0),
            SafeArea(
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.blue,
                labelColor: Colors.black54,
                isScrollable: true,
                unselectedLabelColor: Colors.black12,
                tabs: [
                  Tab(child: tabItem('최신이슈', font_family)),
                  Tab(child: tabItem('지역이슈', font_family)),
                  Tab(child: tabItem('국회의원', font_family)),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    MainListPage(),
                    LocationListPage(),
                    SearchListPage()
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  Widget tabItem(text, font){
    return  Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: font,
              fontSize: 21.0,
              fontWeight: FontWeight.bold
          )
      )
    );
  }

}