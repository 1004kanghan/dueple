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
          backgroundColor: Colors.white,
          // title: Text(
          //   'Dueple',
          //   style: const TextStyle(
          //     color: Palette.duepleMcolor,
          //     fontSize: 28.0,
          //     fontWeight: FontWeight.bold,
          //     letterSpacing: -1.2,
          //   ),
          // ),
          // leading: Icon(Icons.menu),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Container(
              height: 40,
              padding: EdgeInsets.only(left: 8.0, right: 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Palette.lgrey),
              // Colors.white.withOpacity(0.2)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Palette.hgrey,
                      size: 20,
                    ),
                    hintText: "검색어를 입력해주세요",
                    hintStyle: TextStyle(color: Palette.hgrey),
                    contentPadding: EdgeInsets.only(bottom: 5)),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 8.0, bottom: 8.0, right: 8.0),
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/avatar.png",
                  width: 80,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            )
          ],
        ),
        //베너
        SliverToBoxAdapter(
          child: HomeScreenBanner(),
        ),
        SliverToBoxAdapter(
          child: HomeScreenMenu(),
        ),
      ],
    ));
  }
}
