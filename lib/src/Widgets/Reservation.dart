import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReservationsWidget extends StatelessWidget {
  const ReservationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Réservations",
            style: TextStyle(
              fontSize: 15.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 1.5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Row(
              children: [
                _buildReservationItem(
                  imageAsset: 'assets/images/im1.png',
                  iconAsset: 'assets/icons/ball-tennis.png',
                  label: 'Réserver un terrain',
                  context: context,
                ),
                SizedBox(width: 2.w),
                _buildReservationItem(
                  imageAsset: 'assets/images/im2.png',
                  iconAsset: 'assets/icons/vod.png',
                  label: 'Voir les replays',
                  context: context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReservationItem({
    required String imageAsset,
    required String iconAsset,
    required String label,
    required BuildContext context,
  }) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.w),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 0.5,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3.w),
            child: SizedBox(
              width: 45.w,
              height: 30.w,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    imageAsset,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 16.w),
                      child: Image.asset(
                        iconAsset,
                        width: 4.h,
                        height: 4.h,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.w),
                      child: Text(
                        label,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
