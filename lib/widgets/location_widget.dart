import 'package:dueple/config/palette.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: RaisedButton(
      onPressed: () {
        getLocation();
      },
      child: Text(
        '내 위치정보 가져오기',
        style: TextStyle(color: Palette.duepleMcolor),
      ),
      color: Colors.red,
    )));
  }
}
