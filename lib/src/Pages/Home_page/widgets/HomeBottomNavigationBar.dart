import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  final Function(int) onTap;

  const HomeBottomNavigationBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 2.w,
          child: LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF2B52DB)),
            value: 0.2,
          ),
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedFontSize: 10.sp,
          unselectedFontSize: 10.sp,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 1.w),
                child: Image.asset(
                  'assets/icons/home2.png',
                  height: 8.w,
                  width: 8.w,
                ),
              ),
              label: 'Acceuil',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 1.w),
                child: Image.asset(
                  'assets/icons/share.png',
                  color: Colors.grey,
                  height: 8.w,
                  width: 8.w,
                ),
              ),
              label: 'Activités',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 1.w),
                child: Image.asset(
                  'assets/icons/calendar1.png',
                  width: 8.w,
                  height: 8.w,
                ),
              ),
              label: 'Planning',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 1.w),
                child: Image.asset(
                  'assets/icons/category.png',
                  width: 8.w,
                  height: 8.w,
                ),
              ),
              label: 'Produits',
            ),
          ],
          selectedItemColor: const Color(0xFF2B52DB),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          onTap: onTap,
        ),
      ],
    );
  }
}
