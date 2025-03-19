import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/core/widgets/app_text_button.dart';
import 'package:advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced/features/login/ui/widgets/dosent_have_account.dart';
import 'package:advanced/features/login/ui/widgets/email_and_password.dart';
import 'package:advanced/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:advanced/features/login/ui/widgets/terms_and_policy.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 50.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).loginWellcomeBack,
                  style: Styles.font24Blue700w(context),
                ),
                verticalSpace(8),
                Text(
                  S.of(context).loginWellcomeText,
                  style: Styles.font15GrayW400(context),
                ),
                verticalSpace(36),
                EmailAndPassword(),
                verticalSpace(24),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    S.of(context).forgetPassword,
                    style: Styles.font13BlueW400(context),
                  ),
                ),
                verticalSpace(40),
                AppTextButton(
                  buttonText: S.of(context).loginButtonText,
                  textStyle: Styles.buttonTextStyle(context),
                  onPressed: () {
                    validateThenLogin(context);
                  },
                ),
                verticalSpace(40),
                TermsAndPolicy(),
                verticalSpace(40),
                DosentHaveAccount(),
                LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
