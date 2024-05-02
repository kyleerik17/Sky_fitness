import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFC1E8E3),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            'assets/icons/Vector.png',
            width: 10.w,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Cabin',
            fontSize: 17.sp,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(2.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  Aujourd'hui",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Cabin',
                      color: Colors.black,
                    ),
                  ),
                ),
                Gap(1.h),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0.w),
            child: Container(
              height: 11.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 4.w),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      width: 16.w,
                      height: 16.w,
                      child: Image.asset(
                        'assets/images/user.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3.w),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Cabin',
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(
                                  text: 'Chloé KOKO',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: ' A terminé une\nnouvelle prospection.',
                                ),
                              ],
                            ),
                          ),
                          Gap(0.4.h),
                          Text(
                            "Il y'a 29 minutes",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Cabin',
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.all(0.w),
            child: Row(
              children: [
                SizedBox(width: 5.w),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2B52DB),
                  ),
                  width: 14.w,
                  height: 14.w,
                  child: Center(
                    child: Text(
                      'AK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cabin',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Il y a du nouveau du côté de Chloé KOKO,",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cabin',
                          color: Colors.black,
                        ),
                      ),
                      Gap(0.5.h),
                      Text(
                        "Il y'a 2 heures",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(1.h),
          const Divider(color: Colors.grey),
          Gap(1.h),
          Padding(
            padding: EdgeInsets.all(2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  Cette semaine",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Cabin',
                      color: Colors.black,
                    ),
                  ),
                ),
                Gap(1.h),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0.w),
            child: Container(
              height: 11.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 4.w),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      width: 16.w,
                      height: 16.w,
                      child: Image.asset(
                        'assets/images/user.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3.w),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Cabin',
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(
                                  text: 'Chloé KOKO',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: ' A terminé une\nnouvelle prospection.',
                                ),
                              ],
                            ),
                          ),
                          Gap(0.4.h),
                          Text(
                            "Il y'a 29 minutes",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Cabin',
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.all(0.w),
            child: Row(
              children: [
                SizedBox(width: 5.w),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2B52DB),
                  ),
                  width: 14.w,
                  height: 14.w,
                  child: Center(
                    child: Text(
                      'AK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cabin',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Il y a du nouveau du côté de Chloé KOKO,",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cabin',
                          color: Colors.black,
                        ),
                      ),
                      Gap(0.5.h),
                      Text(
                        "Il y'a 2 heures",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(1.h),
          const Divider(color: Colors.grey),
          Gap(1.h),
          Padding(
            padding: EdgeInsets.all(0.w),
            child: Row(
              children: [
                SizedBox(width: 5.w),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2B52DB),
                  ),
                  width: 14.w,
                  height: 14.w,
                  child: Center(
                    child: Text(
                      'AK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cabin',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Il y a du nouveau du côté de Chloé KOKO,",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cabin',
                          color: Colors.black,
                        ),
                      ),
                      Gap(0.5.h),
                      Text(
                        "Il y'a 2 heures",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(1.h),
          const Divider(color: Colors.grey),
          Gap(1.h),
        ],
      ),
    );
  }
}
