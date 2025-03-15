import 'package:advanced/core/helpers/regx.dart';
import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/widgets/app_text_form_field.dart';
import 'package:advanced/features/login/ui/widgets/password_validation.dart';
import 'package:advanced/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: S.of(context).name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).validName;
              }
            },
            controller: context.read<SignUpCubit>().nameController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: S.of(context).phoneNumber,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return S.of(context).validPhone;
              }
            },
            controller: context.read<SignUpCubit>().phoneController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: S.of(context).email,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return S.of(context).validEmail;
              }
            },
            controller: context.read<SignUpCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<SignUpCubit>().passwordController,
            hintText: S.of(context).password,
            isObscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return S.of(context).validPassword;
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            controller:
                context.read<SignUpCubit>().passwordConfirmationController,
            hintText: S.of(context).passwordConfirm,
            isObscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).validPassword;
              }
            },
          ),
          verticalSpace(24),
          PasswordValidation(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacter: hasSpecialCharacters,
            hasNumbers: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
