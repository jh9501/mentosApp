import 'package:flutter/material.dart';
import 'package:mentos/page/main_home.dart';
import 'package:mentos/const/colors.dart';

class MainHeart extends StatefulWidget {
  final int number;
  final List<Post> likedPosts;
  final Function(Post) toggleLike;

  const MainHeart({
    required this.number,
    required this.likedPosts,
    required this.toggleLike,
    Key? key,
  }) : super(key: key);

  @override
  _MainHeartState createState() => _MainHeartState();
}

class _MainHeartState extends State<MainHeart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('찜 목록'),
        ),
        body: Container(
          height:140,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  title: Text('C언어 스터디 구합니다'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('C언어 기초 내용이랑 알고리즘 문제 같이 푸시면서 공부하실 분 구합니다.'),
                      Text('#C언어 #백준 #초보자환영'),
                      SizedBox(height: 10),
                      Text('인원 : 4명'),
                      Text('모집기간 : 2023/05/30 ~ 2023/06/30'),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: BLUE_COLOR
                ),
                onPressed: () => {}
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: BLUE_COLOR,
                ),
                  onPressed: () => {}
              )
            ],
          ),
        ),
      ),
    );
  }
}
