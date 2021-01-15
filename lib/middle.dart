import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                    ["Selected projects.".textSpan.yellow400.make()])
                .xl4
                .black
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                projectWidget(
                    title: "Tawseela App",
                    img:
                        "https://mostaql.hsoubcdn.com/uploads/thumbnails/647427/5ff9b0bd94223/Group-43.png"),
                projectWidget(
                    title: "HMeeting app",
                    img:
                        "https://mostaql.hsoubcdn.com/uploads/thumbnails/647427/5ff9b0bd94223/Group-43.png",
                    onTap: () {
                      launch("https://github.com/hadimortaja/calling-app");
                    }),
                projectWidget(
                    title: "Food Delivery", img: "images/foodDilevery.png"),
                projectWidget(
                    title: "Music App",
                    img:
                        "https://mostaql.hsoubcdn.com/uploads/thumbnails/647427/5ff9b0bd94223/Group-43.png"),
                projectWidget(
                    title: "Covid 19 ",
                    img:
                        "https://mostaql.hsoubcdn.com/uploads/thumbnails/647427/5ff9b0bd94223/Group-43.png",
                    onTap: () {
                      launch(
                          "https://github.com/hadimortaja/covid-19-flutter-app");
                    }),
              ],
              height: 300,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 3.seconds,
            ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

projectWidget({String title, img, onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        width: 350,
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: new GridTile(
            header: Image.network(
              img,
              fit: BoxFit.cover,
            ),
            footer: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title),
                ],
              ),
            ),
            child: Container(),
          ),
        )
        // child: Card(
        //   child: Container(
        //     width: 300,
        //     height: 300,
        //     decoration: BoxDecoration(
        //       image: DecorationImage(
        //         image: NetworkImage(img),
        //         fit: BoxFit.cover,
        //         alignment: Alignment.topCenter,
        //       ),
        //     ),
        //     child: Container(
        //         alignment: Alignment.bottomCenter,
        //         child: Text(
        //           title,
        //           style: TextStyle(color: Colors.white),
        //         )),
        //   ),
        // ),
        ),
  );
}
  
    
  
  //   return title.text.bold.white.xl.wide.center
  //       .make()
  //       .box
  //       .p8
  //       .roundedLg
  //       .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
  //       .alignCenter
  //       .square(200)
  //       .make()
  //       .p16();
  // }

