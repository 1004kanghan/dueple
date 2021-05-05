import 'package:dueple/widgets/home_screen_btn.dart';
import 'package:dueple/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dueple/config/palette.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'Dueple',
              style: const TextStyle(
                color: Palette.duepleMcolor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              //hmoe_screen_btn.dart정보로 작동되는 메뉴버튼
              HomeScreenBtn(
                icon: Icons.search_rounded,
                iconSize: 25.0,
                onPressed: () => print('검색버튼 클릭'),
              ),
              HomeScreenBtn(
                icon: Icons.place_rounded,
                iconSize: 25.0,
                onPressed: () => print('장소버튼 클릭'),
              ),
            ]),
        //베너
        SliverToBoxAdapter(
          child: HomeScreenBanner(),
        ),
      ],
    ));
  }
}
