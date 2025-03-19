import 'package:advanced/core/networking/api_error_model.dart';
import 'package:advanced/features/signup/data/models/signup_request_body.dart';
import 'package:advanced/features/signup/data/repos/signup_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignupRepo _signupRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  SignUpCubit(this._signupRepo) : super(SignUpState.initial());

  void emitSignupStates() async {
    emit(SignUpState.loading());
    final response = await _signupRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: "0",
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignUpState.success(signupResponse));
      },
      failure: (apiErrorModel) {
        emit(SignUpState.error(apiErrorModel));
      },
    );
  }
}
