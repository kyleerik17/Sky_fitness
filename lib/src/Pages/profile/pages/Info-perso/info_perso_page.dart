import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class InfoPersoPage extends StatelessWidget {
  InfoPersoPage({super.key}) {
    initializeDateFormatting('fr_FR', null);
  }

  final List<String> monthList = List.generate(12, (index) {
    final monthDate = DateTime(2024, index + 1, 1);
    final monthName = DateFormat.MMMM().format(monthDate);
    return monthName;
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Cabin'),
        ),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(2.h),
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
                Gap(2.h),
                Text(
                  'Parlez-nous de vous',
                  style: TextStyle(
                    fontSize: 23.sp,
                  ),
                ),
                Gap(3.h),
                Text(
                  'Information entreprise',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
                Divider(color: Colors.grey[600]),
                Gap(1.h),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Prénom ',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(1),
                              fontSize: 11.sp,
                            ),
                          ),
                          const TextSpan(
                            text: '* ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 149, 61, 232),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(1.h),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(1.h),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '  Alex',
                      hintStyle: const TextStyle(fontFamily: 'Cabin'),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(2.w),
                    ),
                  ),
                ),
                Gap(2.h),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Nom ',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(1),
                              fontSize: 11.sp,
                            ),
                          ),
                          const TextSpan(
                            text: '* ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 149, 61, 232),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(1.h),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(1.h),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '  KOFFI',
                      hintStyle: const TextStyle(fontFamily: 'Cabin'),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(2.w),
                    ),
                  ),
                ),
                Gap(2.h),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Date de naissance ',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(1),
                              fontSize: 11.sp,
                            ),
                          ),
                          const TextSpan(
                            text: '* ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 149, 61, 232),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Jour',
                            labelStyle: TextStyle(
                              color: Colors.grey.withOpacity(1),
                              fontSize: 14.sp,
                              fontFamily: 'Cabin',
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: ' 08',

                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Cabin',
                              color: Colors.grey.withOpacity(0.9),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 4.w,
                              horizontal: 5.w,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.h),
                            ),

                            alignLabelWithHint:
                                true, // Ajouter un fond gris à l'intérieur du champ de texte
                            filled: true,
                            fillColor: Colors.grey[350],
                          ),
                        ),
                      ),
                    ),
                    Gap(2.w),
                    SizedBox(
                      width: 200.0,
                      child: Center(
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Mois',
                            labelStyle: TextStyle(
                              color: Colors.grey.withOpacity(1),
                              fontSize: 14.sp,
                              fontFamily: 'Cabin',
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.h),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 4.w,
                              horizontal: 5.w,
                            ),
                            filled: true,
                            fillColor: Colors.grey[350],
                          ),
                          value: monthList[2],
                          items: monthList.map((month) {
                            return DropdownMenuItem<String>(
                              value: month,
                              child: Text(month),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                      ),
                    ),
                    Gap(2.w),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Année',
                            labelStyle: TextStyle(
                              color: Colors.grey.withOpacity(1),
                              fontSize: 14.sp,
                              fontFamily: 'Cabin',
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: '1983',
                            hintStyle: const TextStyle(fontFamily: 'Cabin'),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 4.5.w,
                              horizontal: 4.8.w,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.h),
                            ),
                            // Ajouter un fond gris à l'intérieur du champ de texte
                            filled: true,
                            fillColor: Colors.grey[350],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(2.h),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Numéro de téléphone ',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(1),
                              fontSize: 11.sp,
                            ),
                          ),
                          const TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Color.fromARGB(255, 149, 61, 232),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(1.h),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(1.h),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ' +225 05 65 838 385',
                      hintStyle: const TextStyle(fontFamily: 'Cabin'),
                      fillColor: Colors.red,
                      contentPadding: EdgeInsets.all(3.w),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}