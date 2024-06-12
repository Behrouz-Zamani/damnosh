
import 'package:damnosh/models/fake_data.dart';
import 'package:damnosh/my_strings.dart';
import 'package:flutter/material.dart';
import 'package:damnosh/my_colors.dart';

class homescreen extends StatelessWidget {
  const homescreen({
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
                      poster(size: size),
                      SizedBox(
                        height: 16,
                      ),
                      //tah
                      homePageTagList(),
                      SizedBox(
                        height: 8.0,
                      ),
                      //famous damnosh
                      homePageFamouse(),
                      famouseList(size: size),
              
                      //******************************* */
              
                      topDamnosh(),
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
                      Padding(
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
                  borderRadius:
                      BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                    image:
                        AssetImage(damnoshlist[index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Text(damnoshlist[index].title,style: TextStyle(color: Colors.red,),),
                foregroundDecoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(16.0)),
                  gradient: LinearGradient(
                      colors: GradientColors.tagGradient,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
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
                            style:
                                TextStyle(color: Colors.white)),
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
                      ),
                    ],
                  ),
                ),
              );
  }
}

class topDamnosh extends StatelessWidget {
  const topDamnosh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.0,
    );
  }
}

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
                      borderRadius:
    BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image:
      AssetImage(damnoshlist[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // child: Text(damnoshlist[index].title,style: TextStyle(color: Colors.red,),),
                    foregroundDecoration: BoxDecoration(
                      borderRadius:
    BorderRadius.all(Radius.circular(16.0)),
                      
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
          style:
              TextStyle(color: Colors.white)),
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

class homePageTagList extends StatelessWidget {
  const homePageTagList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tagList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(16.0)),
                  gradient: LinearGradient(
                      colors: GradientColors.tagGradient,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0, 8, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.tag_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        tagList[index].title,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}

class poster extends StatelessWidget {
  const poster({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width / 1.25,
          height: size.height / 4.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            image: DecorationImage(
                image: Image.asset(homePagePosterMap["imageAsset"])
                    .image,
                fit: BoxFit.cover),
          ),
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            gradient: LinearGradient(
              colors: GradientColors.homePosterCoverGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                        size: 16.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(homePagePosterMap["likeDamnosh"],
    style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Text(homePagePosterMap["title"],
                      style: TextStyle(
    color: Colors.white, fontSize: 18)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}