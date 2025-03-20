import 'package:advanced/core/constants/images.dart';
import 'package:advanced/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListItem extends StatelessWidget {
  const SpecialityListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          Image.asset(nurseImage, scale: 4),
          verticalSpace(12.h),
          Text('General'),
        ],
      ),
    );
  }
}
