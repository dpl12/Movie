import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  //电影类型变量，用于接收参数
  final String mt;

  //构造方法的固定写法
  //MovieList({Key key}):super(key:key);
  MovieList({Key key,@required this.mt}):super(key:key);//mt是电影类型参数,@required表示必传项

  _MovieListState createState() => _MovieListState();
}

//有状态控件StatefulWidget的类需要一个“状态管理类”来实现
class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('这是一个电影列表页面----'+widget.mt),//widget为引用MovieList的实例
    );
  }
}