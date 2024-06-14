import 'package:damnosh/my_strings.dart';
import 'package:damnosh/view/home_screen.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
        child: Column(
          children: [
            SizedBox(
              height: 8.0,
            ),
            //Poster

            //tah
            SizedBox(
              height: 8.0,
            ),
            //famous damnosh
            homePageFamouse(),
            famouseList(size: size),

            //******************************* */

            Padding(
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
                    myStrings.viewDamnoshNew,
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ],
              ),
            ),
            famouseList(size:size),
            famouseList(size: size),
            famouseList(size: size),
          ],
        ),
      ),
    );
  }
}






