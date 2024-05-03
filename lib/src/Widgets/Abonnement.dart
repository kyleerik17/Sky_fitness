import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AbonnementsWidget extends StatelessWidget {
  const AbonnementsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Abonnements",
            style: TextStyle(
              fontSize: 15.sp,
              color: const Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 1.0.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(1.h),
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
                        " 1 Mois",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        " 75 000 F/Mois",
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      Text(
                        " Expire le : 12/06/2024",
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 1.0.w),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 18.w,
                      height: 18.w,
                      child: CircularProgressIndicator(
                        value: 0.4,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFF7be79c)),
                        backgroundColor: Colors.grey.shade200,
                        strokeWidth: 3.5.w,
                      ),
                    ),
                    Positioned(
                      top: 4.0.w,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '16\n',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'Jours',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Inter',
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
        ],
      ),
    );
  }
}
