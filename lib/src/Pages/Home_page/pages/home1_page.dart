import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/Home_page/widgets/HomeBottomNavigationBar.dart';
import 'package:sky_fitness/src/Pages/notification/pages/notification_page.dart';
import '../../Coachs/pages/noscoachs_page.dart';

class Home1Page extends StatelessWidget {
  const Home1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 7.h,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/menu.png',
                      width: 15.w,
                      height: 4.h,
                      color: Colors.black,
                    ),
                    Image.asset(
                      'assets/images/im.png',
                      width: 45.w,
                      height: 10.w,
                      color: Colors.blue,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/message.png',
                          width: 8.w,
                          height: 4.h,
                          color: Colors.black,
                        ),
                        Gap(2.w),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NotificationPage(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/icons/notification.png',
                            width: 8.w,
                            height: 4.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  children: [
                    _buildReservationItem(
                      imageAsset: 'assets/images/rt.png',
                      label: 'Réserver un terrain',
                      context: context,
                    ),
                    SizedBox(width: 2.w),
                    _buildReservationItem(
                      imageAsset: 'assets/images/nc.png',
                      label: 'Nos coachs',
                      context: context,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NoscoachsPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  SizedBox(width: 2.h),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.w),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 0.5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(3.w),
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.grey.withOpacity(0.2),
                                BlendMode.srcATop,
                              ),
                              child: Image.asset(
                                'assets/images/rmm.png',
                                fit: BoxFit.cover,
                                height: 16.h,
                                width: 93.w,
                              ),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              'assets/icons/tv.png',
                              width: 45.h,
                              height: 10.h,
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Text(
                                'Revoir mes matchs',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavigationBar(
        // ignore: avoid_types_as_parameter_names
        onTap: (int) {},
      ),
    );
  }

  Widget _buildReservationItem({
    required String imageAsset,
    required String label,
    required BuildContext context,
    VoidCallback? onTap,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3.w),
              child: SizedBox(
                width: 45.w,
                height: 30.w,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      imageAsset,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 12.w),
                        child: Text(
                          label,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
