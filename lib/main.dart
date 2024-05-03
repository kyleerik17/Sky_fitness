import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/Coachs/pages/coachs.dart';
import 'package:sky_fitness/src/Pages/Home/home_page.dart';
import 'package:sky_fitness/src/Pages/Home_page/pages/home1_page.dart';
import 'package:sky_fitness/src/Pages/notification/pages/notification_page.dart';
import 'package:sky_fitness/src/Pages/profile/pages/Info-perso/info_perso_page.dart';
import 'package:sky_fitness/src/Pages/profile/pages/profile_page.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Home1Page(),
          theme: ThemeData(),
        );
      },
    ),
  );
}
