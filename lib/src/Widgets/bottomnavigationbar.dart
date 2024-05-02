import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SkyBottomNavigationBar extends StatelessWidget {
  final Function(int) onTap;

  const SkyBottomNavigationBar({
    Key? key,
    required this.onTap,
    required Color selectedItemColor,
    required Color backgroundColor,
    required double iconSize,
    required BottomNavigationBarType type,
    required double selectedFontSize,
    required double unselectedFontSize,
    required List<BottomNavigationBarItem> items,
    required Color unselectedItemColor,
    required TextStyle selectedLabelStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: 22.w,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedFontSize: 10.sp,
                unselectedFontSize: 10.sp,
                items: [
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.w),
                        child: Image.asset(
                          'assets/icons/home.png',
                          height: 8.w,
                          width: 8.w,
                        ),
                      ),
                    ),
                    label: 'Acceuil',
                  ),
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.w),
                        child: Image.asset(
                          'assets/icons/time.png',
                          color: Colors.grey,
                          height: 8.w,
                          width: 8.w,
                        ),
                      ),
                    ),
                    label: 'Réservation',
                  ),
                  BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () => onTap(0),
                      child: SizedBox(
                        width: 15.w,
                        height: 7.h,
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: 1.w,
                          ),
                          child: Image.asset('assets/icons/KButton.png'),
                        ),
                      ),
                    ),
                    label: ' ',
                  ),
                  BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {
                        onTap(1);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.w),
                        child: Image.asset(
                          'assets/icons/calendar.png',
                          width: 8.w,
                          height: 8.w,
                        ),
                      ),
                    ),
                    label: 'Classes',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 1.w),
                      child: Image.asset(
                        'assets/icons/shop-bag.png',
                        width: 8.w,
                        height: 8.w,
                      ),
                    ),
                    label: 'Boutique',
                  ),
                ],
                selectedItemColor: const Color(0xFF01ADF7),
                unselectedItemColor: Colors.grey,
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                onTap: (int) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
