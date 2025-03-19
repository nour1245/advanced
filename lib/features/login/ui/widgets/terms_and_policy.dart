import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).loginAgrees1,
            style: Styles.font13GrayW400(context),
          ),
          TextSpan(
            text: S.of(context).loginAgrees2,
            style: Styles.mainText(context),
          ),
          TextSpan(
            text: S.of(context).loginAgrees3,
            style: Styles.font13GrayW400(context),
          ),
          TextSpan(
            text: S.of(context).loginAgrees4,
            style: Styles.mainText(context).copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}
