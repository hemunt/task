import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/DietRadioButtonContainer.dart';
import 'package:task/MyAppBar.dart';

import 'DashboardContent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            //BackGround
            Positioned(
                right: 0,
                top: 0,
                child: SvgPicture.asset("Assets/ic_bk_path.svg",height: 120,)),
            DashboardContent()
          ],
        ),
      ),
    );
  }
}
