import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dueple/config/palette.dart';

class HomeScreenBanner extends StatefulWidget {
  final List<String> items;

  HomeScreenBanner({this.items});

  @override
  _HomeScreenBannerState createState() =>
      _HomeScreenBannerState();
}

class _HomeScreenBannerState extends State<HomeScreenBanner> {
  int activeIndex = 0;
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
            options: CarouselOptions(height: 200),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 0.0),
                    decoration: BoxDecoration(
                      color: Palette.banner
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 25,
        height: 8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
