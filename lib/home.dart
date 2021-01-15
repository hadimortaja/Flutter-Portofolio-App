import 'package:flutter/material.dart';
import 'package:portofolio_app/middle.dart';
import 'package:velocity_x/velocity_x.dart';

import 'footer.dart';
import 'header.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey,
      child: VStack([
        HeaderScreen(),
        if(context.isMobile)IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen()
      ]).scrollVertical(),
    );
  }
}