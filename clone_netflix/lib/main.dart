import 'package:clone_netflix/screen/home_screen.dart';
import 'package:clone_netflix/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hongFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(), // 스크롤을 해도 밀리지 않는다.
            children: <Widget>[
              HomeScreen(),
              Container(
                //2페이지
                child: Center(
                  child: Text('search'),
                ),
              ),
              Container(
                // 3페이지
                child: Center(
                  child: Text('center'),
                ),
              ),
              Container(
                //4페이지
                child: Center(
                  child: Text('more'),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
