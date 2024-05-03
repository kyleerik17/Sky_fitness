import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/Coachs/pages/coachs.dart';

class NoscoachsPage extends StatelessWidget {
  const NoscoachsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 2.h),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFEBEBEB),
                    ),
                    padding: EdgeInsets.all(0.w),
                    child: Image.asset(
                      'assets/icons/close.png',
                      width: 12.w,
                      height: 12.w,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nos Coachs',
                  style: TextStyle(
                      fontFamily: 'Cabin',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 0.5.h),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Coach1Page()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/1.png',
                        fit: BoxFit.contain,
                        height: 50.h,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Coach2Page()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/2.png',
                        fit: BoxFit.contain,
                        height: 50.h,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Coach3Page()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/3.png',
                        fit: BoxFit.contain,
                        height: 50.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
