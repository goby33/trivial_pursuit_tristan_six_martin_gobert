import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  AuthRepositoryImpl authRepository;
  UserModelRepositoryImpl userModelRepositoryImpl;

  SplashCubit(
      {required this.authRepository, required this.userModelRepositoryImpl})
      : super(SplashStateLoading());

  Future<void> isConnected() async {
    User? user = authRepository.user;
    UserModel? userModel = userModelRepositoryImpl.getUserModelData();

    // affectation user if null
    if (user == null) {
      final result_user = await authRepository.getCurrentUser();
      if (result_user is SuccessResponse && result_user.data != null) {
        user = result_user.data;
      }
    }
    // user Model
    if (user != null && userModel == null) {
      final result_user_model =
          await userModelRepositoryImpl.getUserModel(uid: user.uid);
      if (result_user_model is SuccessResponse &&
          result_user_model.data != null) {
        userModel = result_user_model.data;
      }
    }
    // emit
    if (user != null && userModel != null) {
      emit(SplashStateConnected());
    } else {
      emit(SplashStateNoConnected());
    }
  }
}
