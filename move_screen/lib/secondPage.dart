import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //클릭시 첫 화면으로 돌아감
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}