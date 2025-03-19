import 'package:advanced/core/helpers/extensions.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/core/widgets/app_text_button.dart';
import 'package:advanced/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:advanced/features/onboarding/widgets/logo_and_name.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                LogoAndName(),
                SizedBox(height: 30.h),
                DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        S.of(context).onBordingHeadText,
                        style: Styles.font13GrayW400(context),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                AppTextButton(
                  buttonText: S.of(context).onBordingButtonText,
                  textStyle: Styles.buttonTextStyle(context),
                  onPressed: () => context.pushNamed(Routes.loginScreen),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
