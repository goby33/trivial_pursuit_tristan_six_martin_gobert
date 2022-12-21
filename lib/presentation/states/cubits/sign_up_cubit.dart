import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  AuthRepositoryImpl authRepository;

  SignUpCubit({required this.authRepository}) : super(SignUpStateNoSignUp());

  Future<void> signUp({required String email, required String password}) async {
    final response = await authRepository.signUp(
      email: email,
      password: password,
    );
    if (response is SuccessResponse<User>) {
      emit(
        SignUpStateSignUp(),
      );
    } else if (response is FailResponse) {
      emit(
        SignUpStateFailed(
          message: response.failure ?? "Error",
          dateTime: DateTime.now(),
        ),
      );
    }
  }
}
