import 'package:advanced/core/helpers/regx.dart';
import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/widgets/app_text_form_field.dart';
import 'package:advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  late TextEditingController passwordController;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumbers = false;
  bool hasMinLength = false;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: S.of(context).emailHint,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return S.of(context).emailValidate;
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(16),
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).passwordValidate;
              }
            },
            hintText: S.of(context).passwordHint,
            controller: context.read<LoginCubit>().passwordController,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            isObscureText: isObscureText,
          ),

        ],
      ),
    );
  }
}
