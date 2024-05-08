import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/ire.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIconStack(
                        'assets/icons/Backg.png', 'assets/icons/ra.png'),
                    SizedBox(height: 2.h),
                    _buildIconStack(
                        'assets/icons/Background.png', 'assets/icons/pa.png'),
                    SizedBox(height: 2.h),
                    _buildIconStack(
                        'assets/icons/Backg.png', 'assets/icons/next.png'),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildIconStack(
                          'assets/icons/Backg.png', 'assets/icons/car.png'),
                      SizedBox(height: 2.h),
                      _buildIconStack(
                          'assets/icons/Backg.png', 'assets/icons/eli.png'),
                      SizedBox(height: 2.h),
                      _buildIconStack(
                          'assets/icons/Backg.png', 'assets/icons/cro.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconStack(String backgroundImage, String iconImage) {
    return InkWell(
      onTap: () {  
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            backgroundImage,
            width: 20.w,
            height: 20.w,
          ),
          Transform.rotate(
            angle: pi / 2,
            child: Image.asset(
              iconImage,
              width: 20.w,
              height: 20.w,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
