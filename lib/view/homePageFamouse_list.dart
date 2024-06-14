import 'package:damnosh/my_strings.dart';
import 'package:flutter/material.dart';

class homePageFamouse extends StatelessWidget {
  const homePageFamouse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 8),
      child: Row(
        children: [
          Icon(
            Icons.panorama_horizontal_rounded,
            color: Colors.blue.shade400,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            myStrings.viewDamnosh,
            style: TextStyle(color: Colors.blue.shade400),
          ),
        ],
      ),
    );
  }
}