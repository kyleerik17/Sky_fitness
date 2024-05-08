import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/Home/Pages/home.dart';
import 'package:sky_fitness/src/Pages/VoirReplays/pages/rotate_page.dart';

import 'page.dart';

class VoirReplaysPage extends StatelessWidget {
  const VoirReplaysPage({Key? key}) : super(key: key);

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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(0.w),
                        child: Image.asset(
                          'assets/icons/back.png',
                          width: 12.w,
                          height: 12.w,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      "Replays",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 58.w),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FindSearchPage()),
                            );
                          },
                          child: Image.asset(
                            'assets/icons/Icon.png',
                            fit: BoxFit.contain,
                            height: 2.5.h,
                          ),
                        ),
                        Gap(1.w),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Vos favoris",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            " Voir tout (10)",
                            style: TextStyle(
                              fontFamily: 'Inter-Medium',
                              fontWeight: FontWeight.w500,
                              fontSize: 11.sp,
                              color: const Color(0xFF0368A0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.0.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.0.w, vertical: 2.0.w),
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
                                      onTap: () {
                                        _showPauseDialog(context);
                                      },
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
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/icons/et.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.black,
                              ),
                              SizedBox(height: 3.0.h),
                              Image.asset(
                                'assets/icons/dl.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.0.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.0.w, vertical: 2.0.w),
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
                                      onTap: () {
                                        _showPauseDialog(context);
                                      },
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
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/icons/et.png',
                                width: 5.w,
                                height: 5.w,
                                color: Colors.black,
                              ),
                              SizedBox(height: 3.0.h),
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
                  ],
                ),
              ),
              SizedBox(height: 1.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Matchs anterieurs",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            " Voir tout (64)",
                            style: TextStyle(
                              fontFamily: 'Inter-Medium',
                              fontWeight: FontWeight.w500,
                              fontSize: 11.sp,
                              color: const Color(0xFF0368A0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.0.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.0.w, vertical: 2.0.w),
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
                                      onTap: () {
                                        _showPauseDialog(context);
                                      },
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
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 4.0.h),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.0.w, vertical: 2.0.w),
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
                                      onTap: () {
                                        _showPauseDialog(context);
                                      },
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
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 4.0.h),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.0.w, vertical: 2.0.w),
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
                                      onTap: () {
                                        _showPauseDialog(context);
                                      },
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
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 4.0.h),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.0.w, vertical: 2.0.w),
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
                                      onTap: () {
                                        _showPauseDialog(context);
                                      },
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
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 4.0.h),
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
            ],
          ),
        ),
      ),
    );
  }

  void _showPauseDialog(BuildContext context) {
    bool isDownloading = false;
    bool isIconChanged = false;

    showDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, -1),
                      end: Offset.zero,
                    ).animate(CurvedAnimation(
                      parent: ModalRoute.of(context)!.animation!,
                      curve: Curves.easeInOut,
                    )),
                    child: AlertDialog(
                      contentPadding: EdgeInsets.all(4.w),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 90.w,
                            height: 40.w,
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
                                      onTap: () {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const RotatePage(),
                                          ),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/icons/play.png',
                                        width: 15.w,
                                        height: 15.w,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 110,
                                  right: -9,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isIconChanged = !isIconChanged;
                                      });
                                    },
                                    child: Image.asset(
                                      isIconChanged
                                          ? 'assets/icons/star.png'
                                          : 'assets/icons/et.png',
                                      width: 16.w,
                                      height: 16.w,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 255,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.8),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      '40:25',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "RP 0043 -10/05/2024",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 1.h),
                                  Text(
                                    "Slot : 16:00 - 17:00",
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  SizedBox(height: 1.h),
                                  Text(
                                    "Terrain : A",
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                ],
                              ),
                              SizedBox(width: 2.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isDownloading = !isDownloading;
                                      });
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: isDownloading
                                          ? MaterialStateProperty.all(
                                              const Color(0xFF01ADF7))
                                          : MaterialStateProperty.all(
                                              Colors.transparent),
                                      side: MaterialStateProperty.all(
                                        BorderSide(
                                            color: isDownloading
                                                ? Colors.blue
                                                : const Color(0xFF01ADF7)),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(1.h),
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Télécharger",
                                          style: TextStyle(
                                              color: isDownloading
                                                  ? Colors.white
                                                  : const Color(0xFF01ADF7)),
                                        ),
                                        SizedBox(width: 1.w),
                                        Image.asset('assets/icons/dl.png',
                                            height: 20,
                                            width: 20,
                                            color: isDownloading
                                                ? Colors.white
                                                : const Color(0xFF01ADF7)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 0.5.h),
                                  TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                        const BorderSide(color: Colors.black),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(1.h),
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          "Partager",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        SizedBox(width: 1.w),
                                        Image.asset(
                                          'assets/icons/ENV.png',
                                          height: 20,
                                          color: Colors.black,
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      actionsPadding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
