import 'package:flutter/material.dart';

class Post1 {
  final String title;
  final String content;
  final String author;

  Post1({
    required this.title,
    required this.content,
    required this.author,
  });
}

class MainStudy extends StatelessWidget {
  final int number;

  const MainStudy({
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Post1> posts = [
      Post1(
        title: 'C언어 스터디',
        content: '(공지사항)',
        author: '2/4',
      ),
      Post1(
        title: '프론트엔드(React) 스터디',
        content: '매주 월요일, 금요일 저녁 7시부터 10시까지~',
        author: '3/8',
      ),
      Post1(
        title: '정보처리기사 자격증 공부',
        content: '주말마다 1챕터씩 공부해오기!!',
        author: '4/5',
      ),
    ];

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('나의 스터디'),
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            Post1 post = posts[index];
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    post.content,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.person, size: 15),
                      SizedBox(width: 4),
                      Text(
                        post.author,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
