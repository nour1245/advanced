import 'package:advanced/core/constants/images.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(docLogo),
          SizedBox(width: 10.w),
          Text(
            S.of(context).docDoc,
            style: Styles.mainText(context).copyWith(fontSize: 20.sp,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
