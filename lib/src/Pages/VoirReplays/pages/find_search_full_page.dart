import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FindSearchFullPage extends StatelessWidget {
  const FindSearchFullPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 6.w),
            Row(
              children: [
                GestureDetector(
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
              ],
            ),
            SizedBox(height: 5.w),
            TextField(
              decoration: InputDecoration(
                hintText: 'RP',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1.5.w),
                ),
              ),
            ),
            SizedBox(height: 2.w),
            Text(
              "Résultats (64 Résultats)",
              style: TextStyle(
                fontSize: 9.sp,
                fontFamily: 'Inter',
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 2.w),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.0.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.0.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 1.0.w),
                  Container(
                    width: 30.w,
                    height: 18.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ir.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/pause.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 90,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 1),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              '40:25',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " RP 0043 - 10/05/2024",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          " Slot : 16:00 - 17:00",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 0.25.h),
                        Text(
                          " Terrain : A",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Column(
                    children: [
                      SizedBox(height: 5.0.h),
                      Image.asset(
                        'assets/icons/dl.png',
                        width: 5.w,
                        height: 5.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.0.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.0.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.0.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 1.0.w),
                  Container(
                    width: 30.w,
                    height: 18.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ir.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/pause.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 90,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 1),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              '40:25',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " RP 0043 - 10/05/2024",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          " Slot : 16:00 - 17:00",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 0.25.h),
                        Text(
                          " Terrain : A",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Column(
                    children: [
                      SizedBox(height: 5.0.h),
                      Image.asset(
                        'assets/icons/dl.png',
                        width: 5.w,
                        height: 5.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.0.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.0.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.0.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 1.0.w),
                  Container(
                    width: 30.w,
                    height: 18.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ir.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/pause.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 90,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 1),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              '40:25',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " RP 0043 - 10/05/2024",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          " Slot : 16:00 - 17:00",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 0.25.h),
                        Text(
                          " Terrain : A",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Column(
                    children: [
                      SizedBox(height: 5.0.h),
                      Image.asset(
                        'assets/icons/dl.png',
                        width: 5.w,
                        height: 5.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.0.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.0.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.0.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 1.0.w),
                  Container(
                    width: 30.w,
                    height: 18.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ir.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/pause.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 90,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 1),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              '40:25',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " RP 0043 - 10/05/2024",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          " Slot : 16:00 - 17:00",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 0.25.h),
                        Text(
                          " Terrain : A",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Column(
                    children: [
                      SizedBox(height: 5.0.h),
                      Image.asset(
                        'assets/icons/dl.png',
                        width: 5.w,
                        height: 5.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.0.h),
            SizedBox(height: 1.0.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.0.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.0.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 1.0.w),
                  Container(
                    width: 30.w,
                    height: 18.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ir.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/pause.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 90,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 1),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              '40:25',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " RP 0043 - 10/05/2024",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          " Slot : 16:00 - 17:00",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 0.25.h),
                        Text(
                          " Terrain : A",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Column(
                    children: [
                      SizedBox(height: 5.0.h),
                      Image.asset(
                        'assets/icons/dl.png',
                        width: 5.w,
                        height: 5.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.0.h),
            SizedBox(height: 1.0.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.0.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.0.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 1.0.w),
                  Container(
                    width: 30.w,
                    height: 18.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ir.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/pause.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 90,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 1),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              '40:25',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " RP 0043 - 10/05/2024",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          " Slot : 16:00 - 17:00",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 0.25.h),
                        Text(
                          " Terrain : A",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.0.w),
                  Column(
                    children: [
                      SizedBox(height: 5.0.h),
                      Image.asset(
                        'assets/icons/dl.png',
                        width: 5.w,
                        height: 5.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.0.h),
          ],
        ),
      ),
    );
  }
}
