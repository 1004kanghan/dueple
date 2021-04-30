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
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  //밑 주석 영역 확인기능
                  // color: Colors.grey[200],
                ),
                child: IconButton(
                  icon: Icon(Icons.search_rounded),
                iconSize: 30.0, 
                color: Colors.black,
                onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  //밑 주석 영역 확인기능
                  // color: Colors.grey[200],
                ),
                child: IconButton(
                  icon: Icon(Icons.place_rounded),
                iconSize: 30.0, 
                color: Colors.black,
                onPressed: () {},
                ),
              ),
            ]
          )
        ],
      )
      
    );
  }
}