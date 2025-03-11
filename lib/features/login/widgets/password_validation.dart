import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:advanced/core/themeing/colors.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({
    super.key,
    required this.hasUpperCase,
    required this.hasLowerCase,
    required this.hasSpecialCharacter,
    required this.hasNumbers,
    required this.hasMinLength,
  });
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasSpecialCharacter;
  final bool hasNumbers;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(S.of(context).hasLowerCase, hasLowerCase),
        verticalSpace(2),
        buildValidationRow(S.of(context).hasUpperCase, hasUpperCase),
        verticalSpace(2),
        buildValidationRow(S.of(context).hasMinLength, hasMinLength),
        verticalSpace(2),
        buildValidationRow(S.of(context).hasNumbers, hasNumbers),
        verticalSpace(2),
        buildValidationRow(S.of(context).hasSpecial, hasSpecialCharacter),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.lightLightGray,
        ),
        Text(
          text,
          style: Styles.seconderyBlueText().copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.greenAccent,
            color:
                hasValidated
                    ? ColorsManager.lightMainGray
                    : ColorsManager.darkMainBlue,
            decorationThickness: 2,
          ),
        ),
      ],
    );
  }
}
