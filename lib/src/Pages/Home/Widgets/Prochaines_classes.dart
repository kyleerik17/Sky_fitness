import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProchainesClassesWidget extends StatelessWidget {
  const ProchainesClassesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Prochaines classes",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  " Voir tout",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 11.sp,
                    color: const Color(0xFF0368A0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.w),
          Container(
            padding: EdgeInsets.all(4.0.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(1.0.h),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 2.0.w,
                        height: 5.0.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 190, 167, 255),
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        margin: EdgeInsets.only(right: 2.0.w),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 105, 40, 255),
                            ),
                            borderRadius: BorderRadius.circular(5.w),
                          ),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zumba",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 0.5.h),
                          Text(
                            "09:00 (45 min)",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 1.0.w),
                Container(
                  width: 22.w,
                  height: 3.5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFd8f1e1),
                    borderRadius: BorderRadius.circular(1.75.h),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Réserver ",
                          style: TextStyle(
                            fontSize: 10.5.sp,
                            fontFamily: 'Inter',
                            color: const Color(0xFF00601A),
                          ),
                        ),
                        Text(
                          "+",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: const Color(0xFF00601A),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.0.h),
          Container(
            padding: EdgeInsets.all(4.0.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(1.0.h),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 2.0.w,
                        height: 5.0.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 145, 216, 249),
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        margin: EdgeInsets.only(right: 1.0.w),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 0, 140, 255),
                            ),
                            borderRadius: BorderRadius.circular(5.w),
                          ),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Pilates",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 0.5.h),
                          Text(
                            " 10:00 (60 min)",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 2.0.w),
                Container(
                  width: 22.w,
                  height: 3.5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFd8f1e1),
                    borderRadius: BorderRadius.circular(1.75.h),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Réserver ",
                          style: TextStyle(
                            fontSize: 10.5.sp,
                            fontFamily: 'Inter',
                            color: const Color(0xFF00601A),
                          ),
                        ),
                        Text(
                          "+",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: const Color(0xFF00601A),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
