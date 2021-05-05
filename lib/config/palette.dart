import 'package:flutter/material.dart';

class Palette {
//Scaffold 색상
  static const Color scaffold = Color(0xFFF0F2F5);

//Dueple 메인 브랜드 컬러
  static const Color duepleMcolor = Color(0xFFF5B91D);

//Black 검정색
  static const Color black = Color(0xFF000000);

//BlueGray 잿빛파란색
  static const Color bluegray = Color(0xFFA3ADBF);

//banner 테스트용 초록색
  static const Color banner = Color(0xff96925D);

//online 컬러
  static const Color online = Color(0xFFF5B91D);

//그라디언트 활용 A
  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFFF5B91D), Color(0xFFF5B91D)],
  );

//그라디언트 활용 B
  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
