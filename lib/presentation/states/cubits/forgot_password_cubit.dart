import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  AuthRepositoryImpl authRepository;

  ForgotPasswordCubit({required this.authRepository})
      : super(ForgotPasswordStateLoading());

  Future<void> forgotPassword({required String email}) async {
    emit(ForgotPasswordStateLoading());
    final response = await authRepository.resetPassword(email: email);
    if (response is SuccessResponse) {
      emit(ForgotPasswordStateSuccess());
    } else if (response is FailResponse) {
      emit(
        ForgotPasswordStateError(
          dateTime: DateTime.now(),
          message: response.failure ?? "Error",
        ),
      );
    }
  }
}
