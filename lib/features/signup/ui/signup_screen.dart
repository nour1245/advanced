import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/core/widgets/app_text_button.dart';
import 'package:advanced/features/login/ui/widgets/terms_and_policy.dart';
import 'package:advanced/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:advanced/features/signup/ui/widgets/alrady_have_account.dart';
import 'package:advanced/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:advanced/features/signup/ui/widgets/signup_form.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).createAccount, style: Styles.font24Blue700w(context)),
                verticalSpace(8),
                Text(
                  S.of(context).signupNow,
                  style: Styles.font14Gray400(context),
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: S.of(context).createAccount,
                      textStyle: Styles.font16White_400w(context),
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndPolicy(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignupStates();
    }
  }
}
