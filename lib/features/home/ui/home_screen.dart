import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/features/home/widgets/doctor_recommendation_list.dart';
import 'package:advanced/features/home/widgets/home_page_banner.dart';
import 'package:advanced/features/home/widgets/home_screen_navigation_bar.dart';
import 'package:advanced/features/home/widgets/name_and_notification.dart';
import 'package:advanced/features/home/widgets/list_title.dart';
import 'package:advanced/features/home/widgets/speciality_list.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              NameAndNotification(),
              verticalSpace(12.h),
              HomePageBanner(),
              verticalSpace(12.h),
              ListTitle(title: S.of(context).specialty, onTap: () {}),
              verticalSpace(14.h),
              SpecialityList(),
              verticalSpace(14.h),
              ListTitle(title: S.of(context).recommendation, onTap: () {}),
              Expanded(child: DoctorRecommendationList()),
              HomeScreenNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
