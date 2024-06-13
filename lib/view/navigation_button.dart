import 'package:damnosh/my_colors.dart';
import 'package:flutter/material.dart';

class NavigationButtonEnter extends StatelessWidget {
  const NavigationButtonEnter({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
    bottom: 8,
    right: 0,
    left: 0,
    child: Container(
      height: size.height / 10,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: GradientColors.bottomNavigationBG,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Container(
          height: size.height / 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: GradientColors.bottomNavigation,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: (() {}),
                  icon: Icon(Icons.home),
                  color: Colors.white),
              IconButton(
                  onPressed: (() {}),
                  icon: Icon(Icons.list_alt_sharp),
                  color: Colors.white),
              IconButton(
                  onPressed: (() {}),
                  icon: Icon(Icons.supervised_user_circle_rounded),
                  color: Colors.white),
            ],
          ),
        ),
      ),
    ),
              );
  }
}
