import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/VoirReplays/pages/page.dart';
import 'src/Pages/Classe/Pages/pages.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const ClassePage(),
          theme: ThemeData(),
          routes: {
            '/voirReplays': (context) => const VoirReplaysPage(),
          },
        );
      },
    ),
  );
}
