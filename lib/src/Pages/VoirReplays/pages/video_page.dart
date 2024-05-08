import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/ir.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _buildIconStack(
                      'assets/icons/b2.png',
                      'assets/icons/car.png',
                      13.0.w,
                    ),
                    SizedBox(width: 1.h),
                    _buildIconStack(
                      'assets/icons/b2.png',
                      'assets/icons/eli.png',
                      13.0.w,
                    ),
                    SizedBox(width: 1.h),
                    _buildIconStack(
                      'assets/icons/b2.png',
                      'assets/icons/cro.png',
                      13.0.w,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildIconStackWithBackground(
                    'assets/icons/Backg.png',
                    'assets/icons/ra.png',
                    16.w,
                  ),
                  SizedBox(width: 2.h),
                  _buildIconStackWithBackground(
                    'assets/icons/Background.png',
                    'assets/icons/pa.png',
                    20.0.w,
                  ),
                  SizedBox(width: 2.h),
                  _buildIconStackWithBackground(
                    'assets/icons/Backg.png',
                    'assets/icons/next.png',
                    16.w,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'RP 0043 - 10/05/2024',
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 17.sp),
                        ),
                        Text('1:48 / 40:25',
                            style: TextStyle(
                                fontFamily: "Inter",
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                                fontSize: 9.sp)),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    const LinearProgressIndicator(
                      value: 0.4,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconStackWithBackground(
    String backgroundImage,
    String iconImage,
    double backgroundSize,
  ) {
    return InkWell(
      onTap: () {},
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: backgroundSize,
            height: backgroundSize,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Image.asset(
            iconImage,
            width: 14.w,
            height: 14.w,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

Widget _buildIconStack(
  String backgroundImage,
  String iconImage,
  double backgroundSize,
) {
  return InkWell(
    onTap: () {},
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: backgroundSize,
          height: backgroundSize,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image.asset(
          iconImage,
          width: 14.w,
          height: 14.w,
          color: Colors.white,
        ),
      ],
    ),
  );
}
