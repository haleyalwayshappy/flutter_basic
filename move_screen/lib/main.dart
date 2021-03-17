import 'package:flutter/material.dart';
import 'package:move_screen/secondPage.dart';

void main() => runApp(MaterialApp(
title:'Named routes Demo',
initialRoute: '/',
routes: {
// "/" Route로 이동하면, FirstScreen 위젯을 생성합니다.
  '/': (context) => FirstScreen(),
// "/second" route로 이동하면, SecondScreen 위젯을 생성합니다.
  '/second': (context) => SecondScreen(),
}
));

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch screen'),
          onPressed: () {
            //클릭시 두번째 화면으로 전환!
Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}



