import 'package:flutter/material.dart';
import 'package:mentos/page/main_home.dart';
import 'package:mentos/page/main_heart.dart';
import 'package:mentos/page/main_study.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController? controller;
  int number = 2;
  List<Post> likedPosts = [];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller!.addListener(tabListener);
  }

  tabListener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: rendChildren(),
      ),
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> rendChildren() {
    return [
      MainHome(number: number),
      MainHeart(number: number, likedPosts: likedPosts, toggleLike: toggleLike),
      MainStudy(number: number),
    ];
  }

  void toggleLike(Post post) {
    setState(() {
      if (likedPosts.contains(post)) {
        likedPosts.remove(post);
      } else {
        likedPosts.add(post);
      }
    });
  }

  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: controller!.index,
      onTap: (int index) {
        setState(() {
          controller!.animateTo(index);
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: '찜 목록',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
          ),
          label: '나의 스터디',
        ),
      ],
    );
  }
}