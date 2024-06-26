import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/Home/Widgets/bottomnavigation.dart';
import 'package:sky_fitness/src/Pages/notification/pages/notification_page.dart';
import '../../profile/pages/profile_page.dart';
import '../Widgets/home_widgets.dart';

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
                  children: [
                    Gap(3.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 400),
                            pageBuilder: (_, __, ___) => const ProfilePage(),
                            transitionsBuilder: (_, animation, __, child) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(-1.0, 0.0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/icons/menu.png',
                        width: 8.w,
                        height: 4.h,
                      ),
                    ),
                    Gap(13.w),
                    Image.asset(
                      'assets/images/im.png',
                      width: 45.w,
                      height: 10.w,
                      color: Colors.blue,
                    ),
                    Gap(10.w),
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
      bottomNavigationBar: BottomNavigationHome(
        onTap: (int) {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/icons/KButton.png',
          width: 18.w,
          height: 12.h,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
