import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClassePage extends StatelessWidget {
  const ClassePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Classes",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Aujourd'hui",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
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
                                  color:
                                      const Color.fromARGB(255, 105, 40, 255),
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
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
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
                      width: 20.w,
                      height: 3.5.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFd8f1e1),
                        borderRadius: BorderRadius.circular(1.75.h),
                        border: Border.all(
                          color: const Color(0xFF00601A),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1.7.h),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
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
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF00601A),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mardi",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
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
                              color: const Color(0xFFD8F89D),
                              borderRadius: BorderRadius.circular(5.w),
                            ),
                            margin: EdgeInsets.only(right: 2.0.w),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFA2E435),
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
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
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
                              color: const Color(0xFFFFCACA),
                              borderRadius: BorderRadius.circular(5.w),
                            ),
                            margin: EdgeInsets.only(right: 1.0.w),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFFF6F6E),
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
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
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
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mercredi",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
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
                              color: const Color(0xFFFEE68A),
                              borderRadius: BorderRadius.circular(5.w),
                            ),
                            margin: EdgeInsets.only(right: 2.0.w),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFFCB823),
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
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
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
                              color: const Color(0xFF99F5E3),
                              borderRadius: BorderRadius.circular(5.w),
                            ),
                            margin: EdgeInsets.only(right: 1.0.w),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF2DD3BE),
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
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
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
        ),
      ),
    );
  }
}
