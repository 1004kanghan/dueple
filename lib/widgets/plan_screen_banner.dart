import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class PlanBanner extends StatefulWidget {
  PlanBanner({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PlanBannerState createState() => _PlanBannerState();
}

class _PlanBannerState extends State<PlanBanner>
    with SingleTickerProviderStateMixin {
  var tabbarController;
  var selectIndex = 0;
  @override
  void initState() {
    super.initState();
    tabbarController = TabController(vsync: this, initialIndex: 0, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ListView(
              children: [
                Text(
                  "Hot Recommended",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // SizedBox(
                //   height: 250,
                //   child: ListView(
                //     scrollDirection: Axis.horizontal,
                //     children: [
                //       RecommentCard(
                //         image: Random().nextInt(7) + 1,
                //       ),
                //       RecommentCard(
                //         image: Random().nextInt(7) + 1,
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecommentCard extends StatelessWidget {
  final image;
  RecommentCard({this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/p$image.jpg",
              height: 150,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Sound of water",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text("Denise Brewer")
        ],
      ),
    );
  }
}
