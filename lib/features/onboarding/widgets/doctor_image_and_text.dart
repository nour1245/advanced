import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/backLogo.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
              colors: [Colors.white, Colors.white.withAlpha(0)],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            S.of(context).onBordingDetailsText,
            style: Styles.font32BlueW700(context).copyWith(height: 1.2),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
