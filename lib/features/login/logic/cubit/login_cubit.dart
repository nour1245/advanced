import 'package:advanced/features/login/data/models/login_request_body.dart';
import 'package:advanced/features/login/data/repos/login_repo.dart';
import 'package:advanced/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  LoginCubit(this._loginRepo) : super(LoginState.initial());

  void emitLoginStates() async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.message ?? ''));
      },
    );
  }
}
