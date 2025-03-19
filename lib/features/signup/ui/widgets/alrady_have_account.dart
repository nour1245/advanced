import 'package:advanced/core/helpers/extensions.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).haveAccount,
            style: Styles.font13BlueW400(context),
          ),
          TextSpan(
            text: ' Login',
            style: Styles.font13BlueW400(context),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(Routes.loginScreen);
                  },
          ),
        ],
      ),
    );
  }
}
