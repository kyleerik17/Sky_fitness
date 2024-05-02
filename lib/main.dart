import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/Home/home_page.dart';
import 'package:sky_fitness/src/Pages/notification/pages/notification_page.dart';
import 'package:sky_fitness/src/Pages/profile/profile.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
          theme: ThemeData(),
        );
      },
    ),
  );
}
