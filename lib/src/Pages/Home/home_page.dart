import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/notification/pages/notification_page.dart';

import '../../Widgets/bottomnavigationbar.dart';
import '../../Widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                                  builder: (context) =>
                                      const NotificationPage()),
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
              SizedBox(height: 3.0.h),
              const AbonnementsWidget(),
              SizedBox(height: 1.0.h),
              const ProchainesClassesWidget(),
              SizedBox(height: 3.0.h),
              const ReservationsWidget(),
              SizedBox(height: 3.0.h),
              const TransactionsWidget(),
              SizedBox(height: 3.0.h),
            ],
          ),
        ),
      ),
      //  bottomNavigationBar: SkyBottomNavigationBar(
      //       onTap: (int) {},
      //       items: const [],
      //       selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      //       selectedItemColor: Colors.black,
      //       iconSize: 8.w,
      //       backgroundColor: Colors.white,
      //       type: BottomNavigationBarType.fixed,
      //       selectedFontSize: 8.sp,
      //       unselectedFontSize: 8.sp,
      //       unselectedItemColor: Colors.black,
      //     )
    );
  }
}
