import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/profile/profile.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              color: const Color(0xFFC1E8E3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10.w,
                          child: Image.asset(
                            'assets/icons/logout.png',
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          'Déconnexion',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoPersoPage()),
                          );
                        },
                        child: Text(
                          'Menu',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 1.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoPersoPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/icons/Vectr.png',
                          width: 10.w,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(3.h),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/userr.png',
                        width: 23.w,
                        height: 23.w,
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Alex KOFFI",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cabin',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.w, horizontal: 4.w),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE897),
                          borderRadius: BorderRadius.circular(1.5.w),
                        ),
                        child: Text(
                          "Abonné",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cabin',
                            color: const Color(0xFF736944),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(2.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Compte",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontFamily: 'Cabin',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                    height: 0.5.h,
                  ),
                  Gap(1.h),
                  Padding(
                    padding: EdgeInsets.all(0.w),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF2B52DB),
                          ),
                          width: 10.w,
                          height: 10.w,
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
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Alex KOFFI",
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cabin',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Gérer mon profil ",
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 5.w,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(1.5.h),
                  Padding(
                    padding: EdgeInsets.all(0.w),
                    child: Row(
                      children: [
                        SizedBox(width: 0.4.w),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          width: 10.w,
                          height: 10.w,
                          child: Center(
                            child: Image.asset(
                              'assets/icons/Vectorr.png',
                              width: 10.w,
                              height: 10.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Partager l'application",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cabin',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "      Abonnement",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontFamily: 'Cabin',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Gap(1.h),
                  Divider(
                    color: Colors.grey[500],
                    height: 1.h,
                  ),
                  Gap(0.5.h),
                  Padding(
                    padding: EdgeInsets.all(0.w),
                    child: Row(
                      children: [
                        SizedBox(width: 5.w),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          width: 10.w,
                          height: 10.w,
                          child: Center(
                            child: Image.asset(
                              'assets/icons/Vecto.png',
                              width: 10.w,
                              height: 10.h,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              SizedBox(width: 4.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "1 Mois",
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Cabin',
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        " (14 jours restants)",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'Cabin',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Gérer votre plan ",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30.w),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 5.w,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(2.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "       Information",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontFamily: 'Cabin',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Gap(1.h),
                  Divider(
                    color: Colors.grey[500],
                    height: 0.5.h,
                  ),
                  Gap(1.h),
                  Padding(
                    padding: EdgeInsets.all(0.w),
                    child: Row(
                      children: [
                        SizedBox(width: 5.w),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          width: 11.w,
                          height: 11.w,
                          child: Center(
                            child: Image.asset(
                              'assets/icons/code.png',
                              width: 10.w,
                              height: 10.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Développé par",
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cabin',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "ARMASOFT ",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 44.w),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 5.w,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(2.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
