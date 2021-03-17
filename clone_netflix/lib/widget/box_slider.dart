import 'Package:flutter/material.dart';
import 'package:clone_netflix/model/model_movie.dart';
/**네모난 박스의 슬라이더 */
class BoxSlider extends StatelessWidget {
  final List<Movie> movies;   // 무비 리스트 가져오기
  BoxSlider({this.movies});   // 여기서 사용 할 수 있도록 선언
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),   // 여백
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // 시작 점 기준 정렬
        children: <Widget>[
          Text('지금 뜨는 컨텐츠'),  // 이름
          Container(
            height: 140, // 크기
            child: ListView(
              scrollDirection: Axis.horizontal,  // 가로로 슬라이딩 ( 세로 vertical)
              children: makeBoxImages(movies),  //  movies 에 있는 이미지
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {  // movies에 있는 리스트만큼 가져온다.
    results.add(InkWell(
      onTap: () {},   // 탭 했을때는?
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset('images/' + movies[i].poster),
        ),
      ),
    ));
  }
  return results;
}
