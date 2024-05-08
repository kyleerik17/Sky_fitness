import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/VoirReplays/pages/voir_replays_page.dart';
import 'src/Pages/VoirReplays/pages/page.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const VoirReplaysPage(),
          theme: ThemeData(),
        );
      },
    ),
  );
}
