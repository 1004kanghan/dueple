import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dueple/config/palette.dart';

final List<String> imgList = [
  'https://postfiles.pstatic.net/MjAyMTA1MDlfMzQg/MDAxNjIwNTQ0Mjc0NTA5.kfzXNxTCEPVu_CjrhAtgaCdYO1PlxtbHptg6qsP0y90g.ZhNKsAwcI_lnJwYVpe1tRKQVF6Xg1mYfvZaxKkTX948g.PNG.1004kanghan/b1.png?type=w966',
  'https://postfiles.pstatic.net/MjAyMTA1MDlfMjM1/MDAxNjIwNTQ2MzcwNzU1.CnyFQJ5SEO8MrYa4djHgB3Zdb8rzokHpkE_SqkFV1wgg.NxH6E520aKznnlq-f4QAtS6QkhTonQ6jUmyWwBQBMLgg.PNG.1004kanghan/2.png?type=w966',
];

class HomeScreenBanner extends StatefulWidget {
  final List<String> items;

  HomeScreenBanner({this.items});

  @override
  _HomeScreenBannerState createState() => _HomeScreenBannerState();
}

class _HomeScreenBannerState extends State<HomeScreenBanner> {
  int activeIndex = 0;
  int _current;
  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200,
              initialPage: 0,
              // enableInfiniteScroll: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction: 1,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 1000)),
                    ))
                .toList(),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
