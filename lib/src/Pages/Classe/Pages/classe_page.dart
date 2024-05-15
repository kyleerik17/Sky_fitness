import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/Classe/Widgets/reserve.dart';
import 'package:sky_fitness/src/Pages/Classe/Widgets/bottomnavigationbar.dart';

class ClassePage extends StatelessWidget {
  const ClassePage({Key? key}) : super(key: key);

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
                height: 6.h,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Text(
                        "Classes",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xFF181816),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const ReservePage(),
              SizedBox(height: 1.h),
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF01ADF7),
                    padding: EdgeInsets.symmetric(
                        vertical: 1.0.h, horizontal: 2.0.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "Charger plus",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationClasse(
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
