import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dernières transactions",
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
          ),
          SizedBox(height: 2.0.h),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "12 Mars 2024",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      Text(
                        " Paiement",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 2.0.w),
                Container(
                  width: 24.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDCF4FF),
                    borderRadius: BorderRadius.circular(2.0.h),
                  ),
                  child: Center(
                    child: Text(
                      "75 000 F",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF01ADF7),
                      ),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "12 Mars 2024",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      Text(
                        " Paiement",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 2.0.w),
                Container(
                  width: 24.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDCF4FF),
                    borderRadius: BorderRadius.circular(2.0.h),
                  ),
                  child: Center(
                    child: Text(
                      "75 000 F",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF01ADF7),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.0.h),
        ],
      ),
    );
  }
}
