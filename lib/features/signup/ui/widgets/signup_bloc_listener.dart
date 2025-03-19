import 'package:advanced/core/helpers/extensions.dart';
import 'package:advanced/core/networking/api_error_model.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/themeing/colors.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen:
          (previous, current) =>
              current is Loading || current is Error || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder:
                  (context) => PopScope(
                    canPop: false,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.getMainBlue(context),
                      ),
                    ),
                  ),
            );
          },
          success: (signupResponse) {
            context.pop();
            showSuccessDialog(context);
          },
          error: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      useRootNavigator: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).signupSuccessful),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[Text(S.of(context).congratulations)],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withValues(alpha: 0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: Text(S.of(context).continueText),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel error) {
    showDialog(
      useRootNavigator: true,
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(error.getAllErrorMessages(), style: Styles.darkBlue15_400w(context)),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  S.of(context).gotIt,
                  style: Styles.blue14_500w(context),
                ),
              ),
            ],
          ),
    );
  }
}
