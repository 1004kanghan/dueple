import 'package:flutter/material.dart';

class User {
  final String name;
  final String title;
  final String imageUrl;

  const User({
    @required this.name,
    @required this.title,
    @required this.imageUrl,
  });
}
