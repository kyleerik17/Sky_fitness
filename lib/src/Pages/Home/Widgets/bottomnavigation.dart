// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sky_fitness/src/Pages/Classe/Pages/classe_page.dart';
import 'package:sky_fitness/src/Pages/Home/Pages/home.dart';

class BottomNavigationHome extends StatefulWidget {
  final Function(int) onTap;

  const BottomNavigationHome({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  _BottomNavigationHomeState createState() => _BottomNavigationHomeState();
}

class _BottomNavigationHomeState extends State<BottomNavigationHome> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedFontSize: 10.sp,
      unselectedFontSize: 10.sp,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 0;
              });
              widget.onTap(0);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.w),
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/h.png',
                    height: 8.w,
                    width: 8.w,
                    color: const Color(0xFF01ADF7),
                  ),
                  const Text(
                    'Acceuil',
                    style: TextStyle(
                      color: Color(0xFF01ADF7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 1;
              });
              widget.onTap(1);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ReservationPage()),
              // );
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.w),
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/clock.png',
                    height: 8.w,
                    width: 8.w,
                  ),
                  const Text(
                    'Réservation',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {},
            child: Container(),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 3;
              });
              widget.onTap(3);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ClassePage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.w),
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/calendar.png',
                    height: 8.w,
                    width: 8.w,
                  ),
                  const Text(
                    'classe',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 4;
              });
              widget.onTap(4);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BoutiquePage()),
              // );
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.w),
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/shop-bag.png',
                    height: 8.w,
                    width: 8.w,
                    color: _selectedIndex == 4 ? Colors.blue : null,
                  ),
                  Text(
                    'Boutiques',
                    style: TextStyle(
                      color: _selectedIndex == 4 ? Colors.blue : null,
                    ),
                  ),
                ],
              ),
            ),
          ),
          label: '',
        ),
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        widget.onTap(index);
      },
    );
  }
}
