import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  AuthRepositoryImpl authRepository;
  UserModelRepositoryImpl userModelRepository;

  SignUpCubit({
    required this.authRepository,
    required this.userModelRepository,
  }) : super(SignUpStateNoSignUp());

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    String nameWithOutWhiteSpace = name.trim();
    if (email.isEmpty || password.isEmpty || nameWithOutWhiteSpace.isEmpty) {
      emit(SignUpStateFailed(
        message: "Please fill all the fields",
        dateTime: DateTime.now(),
      ));
    } else {
      final response_user = await authRepository.signUp(
        email: email,
        password: password,
        name: nameWithOutWhiteSpace,
      );
      if (response_user is SuccessResponse<User>) {
        final response_user_model = await userModelRepository.createUserModel(
          name: nameWithOutWhiteSpace,
          email: email,
          uid: response_user.data!.uid,
        );
        if (response_user_model is SuccessResponse) {
          emit(
            SignUpStateSignUp(),
          );
        } else {
          emit(
            SignUpStateFailed(
              message: response_user.failure ?? "Error",
              dateTime: DateTime.now(),
            ),
          );
        }
      } else if (response_user is FailResponse) {
        emit(
          SignUpStateFailed(
            message: response_user.failure ?? "Error",
            dateTime: DateTime.now(),
          ),
        );
      }
    }
  }
}
