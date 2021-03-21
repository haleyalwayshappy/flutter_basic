import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class Todo {
  bool isDone;
  String title;

  Todo(this.title,{this.isDone=false});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '할 일 관리',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}


class _TodoListPageState extends State<TodoListPage> {
  // 할일 목록을 저장할 리스
  final _items = <Todo>[];
//할일  문자열 조작을 위한 컨트롤러
  var _todoController = TextEditingController();

  @override
  void dispose(){
    _todoController.dispose();
    super.dispose();
  }
//할일 추가 메소드
 void _addTodo(Todo todo){
  setState(() {
    _items.add(todo);
    _todoController.text ='';
  });
 }

 //할일 삭제 메소드
  void _deleteTodo(Todo todo){
    setState(() {
      _items.remove(todo);
    });
  }

  //할일 완료/ 미완료 메소드
  void _toggleTodo(Todo todo){
    setState(() {
      todo.isDone =!todo.isDone;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children:<Widget>[
                Expanded(
                  child: TextField(
                    controller: _todoController,
                  ),
                ),
                RaisedButton(
                    child:Text('추가'),
                    onPressed: ()=>_addTodo(Todo(_todoController.text)),
                ),
              ]
            ),
            Expanded(
              child:ListView(
                children:_items.map((todo)=>_buildItemWidget(todo)).toList(),
              ),
            ),
          ],
        ),
      )
    );
  }

  @override
  Widget _buildItemWidget(Todo todo){
    return ListTile(
      onTap: ()=>_toggleTodo(todo),   // todo : 클릭시  완료/미완료 되도록 수정
   title:Text(
     todo.title, //할일
     style:todo.isDone // 완료일 때는 스타일 적용
     ?TextStyle(
       decoration: TextDecoration.lineThrough, // 취소선
       fontStyle: FontStyle.italic, //이탤릭체
     )
         :null, // 아무 스타일도 적용 안함
   ),
      trailing: IconButton(
        icon:Icon(Icons.delete_forever),
        onPressed: ()=>_deleteTodo(todo), //삭제
      ),
    );
  }
}
