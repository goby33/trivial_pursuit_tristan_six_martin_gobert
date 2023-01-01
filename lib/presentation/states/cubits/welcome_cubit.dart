import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  AuthRepositoryImpl authRepository;

  WelcomeCubit({required this.authRepository}) : super(WelcomeStateLoading());

  Future<void> uploadPicture(String path) async {
    emit(WelcomeStateLoading());
    final response = await authRepository.uploadPicture(file: path);
    if (response is SuccessResponse) {
    } else if (response is FailResponse) {
      emit(
        WelcomeStateFailed(
          dateTime: DateTime.now(),
          message: response.failure ?? "error",
        ),
      );
    }
  }
}
