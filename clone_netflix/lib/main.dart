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
    return MaterialApp(  // 화면에 표시되는 부분
      title: 'hongFlix',   // 타이틀
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
                //검색 페이지
                child: Center(
                  child: Text('search'),
                ),
              ),
              Container(
                // 저장한 컨텐츠목록 페이지
                child: Center(
                  child: Text('center'),
                ),
              ),
              Container(
                // 더보기 페이지
                child: Center(
                  child: Text('more'),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),  // 따로 바텀네비게이션 페이지를 만든뒤 이렇게 선언!
        ),
      ),
    );
  }
}
