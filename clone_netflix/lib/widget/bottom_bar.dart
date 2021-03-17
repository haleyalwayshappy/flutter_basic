import 'package:flutter/material.dart';
/** 바텀 네비게이션 클래스!!!!*/
class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,  // 바텀 컬러
      child: Container(
        height: 60,  // 높이
        child: TabBar(
          labelColor: Colors.white,  // 아이콘 색상
          unselectedLabelColor: Colors.white,  // 선택되지않은 아이콘 색상
          indicatorColor: Colors.red,  //선택 된 곳 바닥 줄 색상
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,  // 아이콘
                size: 18,   // 크기
              ),
              child: Text(  //이름
                '홈',
                style: TextStyle(fontSize: 9),  // 폰트 크기
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 18,
              ),
              child: Text(
                '검색',
                style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.save_alt,
                size: 18,
              ),
              child: Text(
                '저장한 콘텐츠목록',
                style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.list,
                size: 18,
              ),
              child: Text(
                '더보기',
                style: TextStyle(fontSize: 9),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
