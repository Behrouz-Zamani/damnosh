// import 'package:damnosh/models/fake_data.dart';
import 'package:damnosh/my_colors.dart';
import 'package:damnosh/view/category_view.dart';
// import 'package:damnosh/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'view/navigation_button.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('fa')],
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: MyColors.scafoldBg,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.menu),
                Image.asset('assets/images/damnosh.png',
                    height: size.height / 13.6, width: 100),
                Icon(Icons.search),
              ],
            ),
          ),
          //Body
          body: Stack(
            children: [
              CategoryView(size: size),
NavigationButtonEnter(size: size,)       ,
       // Positioned(
              //   bottom: 0,
              //   right: 0,
              //   left: 0,
              //   child: Container(
              //     height: size.height / 10,
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //           colors: GradientColors.bottomNavigationBG,
              //           begin: Alignment.topCenter,
              //           end: Alignment.bottomCenter),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(right: 24, left: 24),
              //       child: Container(
              //         height: size.height / 8,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.all(Radius.circular(16)),
              //           gradient: LinearGradient(
              //             colors: GradientColors.bottomNavigation,
              //           ),
              //         ),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             IconButton(
              //                 onPressed: (() {}),
              //                 icon: Icon(Icons.home),
              //                 color: Colors.white),
              //             IconButton(
              //                 onPressed: (() {}),
              //                 icon: Icon(Icons.list_alt_sharp),
              //                 color: Colors.white),
              //             IconButton(
              //                 onPressed: (() {}),
              //                 icon: Icon(Icons.supervised_user_circle_rounded),
              //                 color: Colors.white),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )
          //
          ),
    );
  }
}
