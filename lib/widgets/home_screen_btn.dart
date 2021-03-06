import 'package:flutter/material.dart';
import 'package:dueple/config/palette.dart';

class HomeScreenBtn extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onPressed;
  
  const HomeScreenBtn({
    Key key,
    @required this.icon,
    @required this.iconSize,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        //color 
        // color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: Palette.black,
        onPressed: onPressed,
        ),      
    );
  }
}