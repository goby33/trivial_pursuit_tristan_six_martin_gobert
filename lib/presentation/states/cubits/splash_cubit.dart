
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  AuthRepositoryImpl authRepository;

  SplashCubit({required this.authRepository}) : super(SplashStateLoading());

  Future<void> isConnected() async {
    final user = authRepository.user;
    if (user != null) {
      emit(SplashStateConnected());
    } else {
      final result_user = await authRepository.getCurrentUser();
      if (result_user is SuccessResponse && result_user.data != null) {
        emit(SplashStateConnected());
      } else {
        emit(SplashStateNoConnected());
      }
      emit(SplashStateNoConnected());
    }
  }
}
