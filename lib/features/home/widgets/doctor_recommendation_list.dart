import 'package:advanced/features/home/widgets/doctor_recommendation_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorRecommendationList extends StatelessWidget {
  const DoctorRecommendationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return DoctorRecommendationListItem();
        },
      ),
    );
  }
}
