import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  AuthRepositoryImpl authRepository;
  UserModelRepositoryImpl userModelRepositoryImpl;

  ProfileCubit({
    required this.authRepository,
    required this.userModelRepositoryImpl,
  }) : super(ProfileStateLoading());

  Future<void> getProfile() async {
    final user = await authRepository.user;
    if (user != null) {
      final user_model_response =
          await userModelRepositoryImpl.getUserModel(uid: user.uid);
      if (user_model_response is SuccessResponse &&
          user_model_response.data != null) {
        UserModel userModel = user_model_response.data!;
        emit(ProfileStateSignIn(user: userModel, uid: user.uid));
      } else {
        emit(
          ProfileStateFailed(
            message: user_model_response.toString(),
            dateTime: DateTime.now(),
          ),
        );
      }
    } else {
      ProfileStateNoSignIn();
    }
  }

  Future<void> signOut() async {
    await authRepository.signOut();
    emit(ProfileStateNoSignIn());
  }

  Future<void> deleteAccount() async {
    //await userModelRepositoryImpl.deleteUser(uid: state.user!.uid);
    emit(ProfileStateNoSignIn());
  }
}
