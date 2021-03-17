import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0; // 페이지 인덱스 0,1,2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(    // 상단부
        title: Text('Bottom Navigation'),
        actions: <Widget>[ // 상단 버튼
          IconButton(
            icon:Icon(
              Icons.add,
              color:Colors.black,
            ),
            onPressed: (){},
          )
        ],
      ),
      body: Center(  // 화면 부
        child: Text(
          '$_index 페이지',
          style: TextStyle(fontSize: 40),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(  //바텀 네비게이션
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _index = index; // 선택된 탭의 인덱스로 _index를 변경
          });
        },
        currentIndex: _index, // 선택된 인덱스
        items: <BottomNavigationBarItem>[ //네비게이션 바 리스
          BottomNavigationBarItem(
            title: Text('1번'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('2번'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('3번'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('4번'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('5번'),
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
