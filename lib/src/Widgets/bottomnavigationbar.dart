import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SkyBottomNavigationBar extends StatelessWidget {
  final Function(int) onTap;

  const SkyBottomNavigationBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
                  'assets/icons/home.png',
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
                  'assets/icons/clock.png',
                  color: Colors.grey,
                  height: 8.w,
                  width: 8.w,
                ),
              ),
              label: 'Réservation',
            ),
            BottomNavigationBarItem(
              icon:
                  Container(), // Utilisé pour laisser de l'espace pour le bouton flottant
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 1.w),
                child: Image.asset(
                  'assets/icons/calendar.png',
                  width: 8.w,
                  height: 8.w,
                ),
              ),
              label: 'classe',
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
              label: 'Boutiques',
            ),
          ],
          selectedItemColor: const Color(0xFF01ADF7),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          onTap: onTap,
        ),
      ],
    );
  }
}
