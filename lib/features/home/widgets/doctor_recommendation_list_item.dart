import 'package:advanced/core/constants/images.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorRecommendationListItem extends StatelessWidget {
  const DoctorRecommendationListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
          width: 110.w,
          height: 110.h,
          child: Image.asset(nurseImage),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Doctor Name",
              style: Styles.mainText(
                context,
              ).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("Speciality | address", style: Styles.font13GrayW400(context)),
            Text("degree", style: Styles.font13GrayW400(context)),
          ],
        ),
      ],
    );
  }
}
