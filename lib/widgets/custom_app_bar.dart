import 'package:flutter/material.dart';
import 'package:dueple/config/palette.dart';
import 'package:dueple/models/models.dart';
import 'package:dueple/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomAppBar({
    Key key,
    @required this.currentUser,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Expanded(
          //   child: Text(
          //     'Dueple',
          //     style: const TextStyle(
          //       color: Palette.duepleMcolor,
          //       fontSize: 20.0,
          //       fontWeight: FontWeight.bold,
          //       letterSpacing: -1.2,
          //     ),
          //   ),
          // ),
          Container(
            height: double.infinity,
            width: 600.0,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // UserCard(user: currentUser),
                // const SizedBox(width: 12.0),
                HomeScreenBtn(
                  icon: Icons.search_rounded,
                  iconSize: 25.0,
                  onPressed: () => print('Search'),
                ),
                HomeScreenBtn(
                  icon: Icons.place_rounded,
                  iconSize: 25.0,
                  onPressed: () => print('location'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
