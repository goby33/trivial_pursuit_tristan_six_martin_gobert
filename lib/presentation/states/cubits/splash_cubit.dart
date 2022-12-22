import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  AuthRepositoryImpl authRepository;

  SplashCubit({required this.authRepository}) : super(SplashStateLoading());

  Future<void> isConnected() async {
    final response = await authRepository.isConnected();
    if (response is SuccessResponse<bool>) {
      emit(SplashStateConnected());
    } else if (response is FailResponse) {
      emit(SplashStateFailed(
        message: response.failure ?? "Error",
        dateTime: DateTime.now(),
      ));
    }
  }


}