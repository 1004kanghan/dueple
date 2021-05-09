import 'package:dueple/widgets/home_screen_btn.dart';
import 'package:dueple/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dueple/config/palette.dart';

class SocialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabbarController;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            bottom: TabBar(
              controller: tabbarController,
              isScrollable: true,
              indicatorColor: Palette.duepleMcolor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              tabs: <Widget>[
                Tab(
                    child: Text(
                  '나의 모임',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  // style: TextStyle(color: tabbarController.index == 0
                  // ? Color( widget.colorVal) : Colors.amber, fontSize: 18.0, fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text(
                  '실시간 소셜',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text(
                  '3',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text(
                  '4',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text(
                  '5',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                )),
              ],
            ),
            // title: Text(
            //   '소셜',
            //   style: const TextStyle(
            //     color: Colors.black,
            //     fontSize: 20.0,
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: -1.2,
            //   ),
            // ),
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
        //   child: HomeScreenBanner(),
        // ),
      ],
    ));
  }
}
