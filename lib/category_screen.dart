// import 'package:damnosh/models/fake_data.dart';
import 'package:damnosh/my_colors.dart';
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
            // Row(
            //   children: [
            //     ListView.builder(
            //       itemCount: damnoshlist.getRange(0, 5).length,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: ((context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Stack(
            //             children: [
            //               Container(
            //                 height: size.height / 5.3,
            //                 width: size.width / 2.5,
            //                 decoration: BoxDecoration(
            //                   borderRadius:
            //                       BorderRadius.all(Radius.circular(16)),
            //                   image: DecorationImage(
            //                     image: AssetImage(damnoshlist[index].imageUrl),
            //                     fit: BoxFit.cover,
            //                   ),
            //                 ),
            //                 // child: Text(damnoshlist[index].title,style: TextStyle(color: Colors.red,),),
            //                 foregroundDecoration: BoxDecoration(
            //                   borderRadius:
            //                       BorderRadius.all(Radius.circular(16.0)),
            //                 ),
            //               ),
            //               Positioned(
            //                 bottom: 0,
            //                 right: 8,
            //                 left: 0,
            //                 child: Column(
            //                   children: [
            //                     Row(
            //                       children: [
            //                         Text(damnoshlist[index].title,
            //                             style: TextStyle(color: Colors.white)),
            //                       ],
            //                     ),
            //                     SizedBox(
            //                       height: 8,
            //                     ),
            //                     Text(
            //                       damnoshlist[index].content,
            //                       overflow: TextOverflow.ellipsis,
            //                       maxLines: 2,
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         );
            //       }),
            //     ),
            //   ],
            // ),
            //Botton Navigation
            NavigationButtonEnter(size: size),
          ],
        ),
        //
      ),
    );
  }
}
