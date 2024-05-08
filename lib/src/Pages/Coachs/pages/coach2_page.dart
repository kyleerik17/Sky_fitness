import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Coach2Page extends StatelessWidget {
  const Coach2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 135.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/c1.jpeg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 10,
            child: Align(
              alignment: Alignment.topLeft,
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
                    'assets/icons/back.png',
                    width: 12.w,
                    height: 12.w,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.h),
            color: Colors.white.withOpacity(1),
            padding: EdgeInsets.all(4.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nos coachs",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.sp,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 1.0.h),
                  Text(
                    "Hussein, coach de musculation passionné et dévoué, incarne l'excellence dans le domaine du fitness. Fort de sa conviction envers une approche préventive de la santé, Hussein croit fermement que l'exercice bien dirigé est la clé pour réduire l'incidence des maladies chroniques. Avec une expérience substantielle en tant que gestionnaire du bien-être en entreprise au sein d'une grande multinationale, il a développé un programme structurel sur mesure, faisant de lui un spécialiste du mouvement et de la perte de poids.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 2.0.h),
                  Text(
                    "Sa méthodologie repose sur l'idée que chaque individu est unique, et il conçoit des programmes personnalisés en conséquence. En tant que coach, Hussein a travaillé avec plus de 100 personnes, évaluant leur posture, leur amplitude de mouvement et leur composition corporelle. Il fournit des informations cruciales pour orienter ses clients vers une meilleure santé physique.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Cabin',
                    ),
                  ),
                  SizedBox(height: 3.0.h),
                  Text(
                    "Formation et certifications",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 3.0.h),
                  Text(
                    "IFBB COACH",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Text(
                    "PROFESSIONAL PERSONAL TRAINER",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Text(
                    "PROFESSIONAL PERSONAL TRAINER",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Text(
                    "CHAMPION CLASSIC PHYSIC",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                    ),
                  ),
                  SizedBox(height: 3.0.h),
                  Text(
                    "Spécialités",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 3.0.h),
                  Text(
                    "Perte de poids",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Text(
                    "Préparation physique",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Text(
                    "Coaching personnalisé",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                    ),
                  ),
                  SizedBox(height: 3.0.h),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF3AB5A7),
                        padding: EdgeInsets.symmetric(
                            vertical: 1.0.h, horizontal: 4.0.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        "Contacter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: 'Cabin',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
