import 'package:advanced/core/helpers/extensions.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/themeing/colors.dart';
import 'package:advanced/core/themeing/styles.dart';
import 'package:advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced/features/login/logic/cubit/login_state.dart';
import 'package:advanced/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            errorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void errorDialog(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(error, style: Styles.darkBlue15_400w(context)),
          icon: Icon(Icons.error, color: Colors.red),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text(
                S.of(context).gotIt,
                style: Styles.blue14_500w(context),
              ),
            ),
          ],
        );
      },
    );
  }
}
