import 'package:damnosh/models/fake_data.dart';
import 'package:flutter/material.dart';

class famouseList extends StatelessWidget {
  const famouseList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SizedBox(
        height: size.height / 4.1,
        child: ListView.builder(
          itemCount: damnoshlist.getRange(0, 5).length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: size.height / 5.3,
                    width: size.width / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: AssetImage(damnoshlist[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // child: Text(damnoshlist[index].title,style: TextStyle(color: Colors.red,),),
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 8,
                    left: 0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(damnoshlist[index].title,
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          damnoshlist[index].content,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}