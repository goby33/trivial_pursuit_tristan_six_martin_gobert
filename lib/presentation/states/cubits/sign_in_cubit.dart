import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  AuthRepositoryImpl authRepository;

  SignInCubit({required this.authRepository}) : super(SignInStateNoSignIn());

  Future<void> signIn({required String email, required String password}) async {
    final response = await authRepository.signIn(
      email: email,
      password: password,
    );
    if (response is SuccessResponse<User>) {
      emit(
        SignInStateSignIn(),
      );
    } else if (response is FailResponse) {
      emit(
        SignInStateFailed(
          message: response.failure ?? "Error",
          dateTime: DateTime.now(),
        ),
      );
    }
  }
}
