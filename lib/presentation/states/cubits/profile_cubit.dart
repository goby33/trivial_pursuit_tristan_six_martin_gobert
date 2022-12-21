import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  AuthRepositoryImpl authRepository;

  ProfileCubit({required this.authRepository}) : super(ProfileStateLoading());

  Future<void> getProfile() async {
    final response = await authRepository.getCurrentUser();
    if (response is SuccessResponse) {
      if (response.data != null) {
        emit(
          ProfileStateSignIn(user: response.data!),
        );
      } else {
        emit(
          ProfileStateNoSignIn(),
        );
      }
    } else if (response is FailResponse) {
      emit(
        ProfileStateFailed(
          message: response.toString(),
          dateTime: DateTime.now(),
        ),
      );
    }
  }

  Future<void> signOut() async {
    await authRepository.signOut();
    emit(ProfileStateNoSignIn());
  }
}
