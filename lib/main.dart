import 'package:flutter/material.dart';
import 'package:flutter_app_work_time/Screem.dart';
import 'package:flutter_app_work_time/consts.dart';

void main() {
  runApp(HomeScreem());
}

class HomeScreem extends StatelessWidget {
  const HomeScreem({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: kcolorBackground),
      debugShowCheckedModeBanner: false,
      home: ScreemInit(),
    );
  }
}
