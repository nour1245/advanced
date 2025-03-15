import 'package:advanced/core/helpers/extensions.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DosentHaveAccount extends StatelessWidget {
  const DosentHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).dosentHaveAccount,
            style: Styles.mainText(context),
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(Routes.signupScreen);
                  },
            text: S.of(context).signUp,
            style: Styles.font13BlueW400(context),
          ),
        ],
      ),
    );
  }
}
