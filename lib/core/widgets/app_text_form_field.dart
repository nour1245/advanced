import 'package:advanced/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.isObscureText,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.suffixIcon,
    this.contentPadding,
    this.fillColor,
    this.controller,
    required this.validator,
  });
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final bool? isObscureText;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? ColorsManager.getGrayWhite(context),
        filled: true,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        hintText: hintText,
        hintStyle:
            hintStyle ?? TextStyle(color: ColorsManager.getLightGray(context)),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ColorsManager.getMainBlue(context)),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),

              borderSide: BorderSide(
                color: ColorsManager.getLighterGray(context),
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.0),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      validator: (value) => validator(value),
    );
  }
}
