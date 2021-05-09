import 'package:dueple/widgets/home_screen_btn.dart';
import 'package:dueple/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dueple/config/palette.dart';

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              '여행일정',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            // centerTitle: true,
            floating: true,
            actions: [
              //hmoe_screen_btn.dart정보로 작동되는 메뉴버튼
              HomeScreenBtn(
                icon: Icons.search_rounded,
                iconSize: 25.0,
                onPressed: () => print('검색버튼 클릭'),
              ),
              HomeScreenBtn(
                icon: Icons.filter_alt_rounded,
                iconSize: 25.0,
                onPressed: () => print('필터버튼 클릭'),
              ),
            ]),
        //베너
        // SliverToBoxAdapter(
        //     child: Container(
        //         margin: EdgeInsets.all(20),
        //         color: Colors.white,
        //         width: double.infinity,
        //         child: Align(
        //             alignment: Alignment.centerLeft,
        //             child: Text(
        //               '제주도 여행',
        //               style:
        //                   TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //             )))),
        // SliverToBoxAdapter(
        //   child: PlanBanner(),
        // ),
      ],
    ));
  }
}
