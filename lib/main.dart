// import 'dart:js_interop_unsafe';

import 'package:damnosh/category_screen.dart';
import 'package:damnosh/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:damnosh/my_colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter/widgets.dart';
// import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MyColors.systemNavigationBarColor,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const CategoryScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //var theme=Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('fa')],
      // theme: ThemeData(
      //     fontFamily: 'yekan',
      //     textTheme: const TextTheme(
      //         headlineLarge: TextStyle(
      //             fontSize: 24, color: Color.fromARGB(255, 212, 232, 100)),
      //         bodyMedium: TextStyle(
      //             fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
      //         titleSmall:TextStyle(
      //             fontSize: 12, color: MyColors.posterSubTitle),
      //         titleLarge:TextStyle(
      //             fontSize: 10,color: MyColors.posterTitle)
      //             ),

      //             ),

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
        body: Stack(
          children: [
                      homescreen(size: size),
            Positioned(
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
              padding: const EdgeInsets.only(right: 24,left: 24),
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
            ),

          ],
        ),
      ),
    );
  }
}


