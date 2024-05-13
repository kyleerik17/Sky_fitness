import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReservePage extends StatelessWidget {
  const ReservePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                              fontSize: 11.sp,
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
                  width: 24.w,
                  height: 3.5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD8F9E1),
                    borderRadius: BorderRadius.circular(1.75.h),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pageDialogreserve(context);
                    },
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
                            fontSize: 13.sp,
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
                              fontSize: 11.sp,
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
                    color: const Color(0xFF00601A),
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
                      onPressed: () {
                        _pageDialogreserve2(context);
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Réserver",
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
                            "Steps",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 11.sp,
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
                  width: 24.w,
                  height: 3.5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFd8f1e1),
                    borderRadius: BorderRadius.circular(1.75.h),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pageDialogreserve(context);
                    },
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
                            fontSize: 13.sp,
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
                            " Spinning",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 11.sp,
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
                  width: 24.w,
                  height: 3.5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFd8f1e1),
                    borderRadius: BorderRadius.circular(1.75.h),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pageDialogreserve2(context);
                    },
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
                            fontSize: 13.sp,
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
                            "Crossfit",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 11.sp,
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
                  width: 24.w,
                  height: 3.5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFd8f1e1),
                    borderRadius: BorderRadius.circular(1.75.h),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pageDialogreserve(context);
                    },
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
                            fontSize: 13.sp,
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
                            " Grit",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 11.sp,
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
                  width: 24.w,
                  height: 3.5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFd8f1e1),
                    borderRadius: BorderRadius.circular(1.75.h),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pageDialogreserve2(context);
                    },
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
                            fontSize: 13.sp,
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

  void _pageDialogreserve(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Center(
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.5.h),
                ),
                contentPadding: EdgeInsets.all(2.w),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.0.w),
                      width: 100.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0.h),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 3,
                            blurRadius: 0.5,
                            offset: Offset(0, 1),
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
                                  height: 22.0.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFC7D2FE),
                                    borderRadius: BorderRadius.circular(5.w),
                                  ),
                                  margin: EdgeInsets.only(right: 2.0.w),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF828DF9),
                                      ),
                                      borderRadius: BorderRadius.circular(5.w),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 1.5.h),
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
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "Coach : Johanna",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "Participants : 12/20",
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
                          Column(
                            children: [
                              SizedBox(height: 1.3.h),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(
                                    Size(23.w, 4.h),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0xFFD8F9E1),
                                  ),
                                  side: MaterialStateProperty.all(
                                    const BorderSide(
                                      color: Color(0xFF00601A),
                                    ),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.h),
                                    ),
                                  ),
                                  padding: MaterialStateProperty.all<
                                      EdgeInsetsGeometry>(
                                    EdgeInsets.zero,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Réserver ",
                                      style: TextStyle(
                                        fontSize: 10.5.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Inter',
                                        color: const Color(0xFF00601A),
                                      ),
                                    ),
                                    Text(
                                      " +",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xFF00601A),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                    const BorderSide(color: Colors.black),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.h),
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
                    ),
                  ],
                ),
                actionsPadding: EdgeInsets.zero,
              ),
            );
          },
        );
      },
    );
  }

  void _pageDialogreserve2(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Center(
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.5.h),
                ),
                contentPadding: EdgeInsets.all(2.w),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.0.w),
                      width: 100.w,
                      height: 17.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0.h),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 3,
                            blurRadius: 0.5,
                            offset: Offset(0, 1),
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
                                  height: 22.0.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB9E5FC),
                                    borderRadius: BorderRadius.circular(5.w),
                                  ),
                                  margin: EdgeInsets.only(right: 2.0.w),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF38BCF7),
                                      ),
                                      borderRadius: BorderRadius.circular(5.w),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 1.5.h),
                                    Text(
                                      "Pilates",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "10:00 (60 min)",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "Coach : Xavier",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "Participants : 20/20",
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
                          Column(
                            children: [
                              SizedBox(height: 1.3.h),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(
                                    Size(23.w, 4.h),
                                  ),
                                  side: MaterialStateProperty.all(
                                    const BorderSide(
                                      color: Color(0xFF00601A),
                                    ),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.h),
                                    ),
                                  ),
                                  padding: MaterialStateProperty.all<
                                      EdgeInsetsGeometry>(
                                    EdgeInsets.zero,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Réservé",
                                      style: TextStyle(
                                        fontSize: 10.5.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Inter',
                                        color: const Color(0xFF00601A),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                    const BorderSide(color: Colors.black),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.h),
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
                    ),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Détails réservations",
                            style: TextStyle(color: Color(0xFF0368A0)),
                          ),
                          SizedBox(width: 1.w),
                          Image.asset(
                            'assets/icons/ar.png',
                            height: 20,
                            color: const Color(0xFF0368A0),
                            width: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                actionsPadding: EdgeInsets.zero,
              ),
            );
          },
        );
      },
    );
  }
}
