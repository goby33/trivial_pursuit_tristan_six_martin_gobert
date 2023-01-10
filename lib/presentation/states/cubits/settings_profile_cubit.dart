import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/settings_profile_state.dart';

class SettingsProfileCubit extends Cubit<SettingsProfileState> {
  AuthRepositoryImpl authRepository;
  UserModelRepositoryImpl userModelRepositoryImpl;

  SettingsProfileCubit({
    required this.authRepository,
    required this.userModelRepositoryImpl,
  }) : super(SettingsProfileStateInitial());

  Future<void> updateName(String name) async {
    emit(SettingsProfileStateLoading());
    final user = await authRepository.user;
    if (user != null) {
      final name_response = await authRepository.updateName(name: name);
      if (name_response is SuccessResponse) {
        final name_user_model_response = await userModelRepositoryImpl
            .updateNameUserModel(name: name, uid: user.uid);
        if (name_user_model_response is SuccessResponse) {
          emit(SettingsProfileStateSuccess());
        } else {
          emit(SettingsProfileStateErrorTextField(
              message: name_user_model_response.toString(),
              dateTime: DateTime.now()));
        }
      } else {
        emit(SettingsProfileStateFailed(
          message: name_response.toString(),
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorUserNoConnected(
        message: "User is null",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> updateEmail({required String email, required String password}) async {
    emit(SettingsProfileStateLoading());
    final user = await authRepository.user;
    if (user != null) {
      final email_response = await authRepository.updateEmail(email: email, password: password);
      if (email_response is SuccessResponse) {
        final email_user_model_response = await userModelRepositoryImpl
            .updateEmailUserModel(email: email, uid: user.uid);
        if (email_user_model_response is SuccessResponse) {
          emit(SettingsProfileStateSuccess());
        } else {
          emit(SettingsProfileStateFailed(
              message: email_user_model_response.toString(),
              dateTime: DateTime.now()));
        }
      } else {
        emit(SettingsProfileStateErrorTextField(
          message: email_response.failure.toString(),
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorUserNoConnected(
        message: "User is null",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> updatePassword({required String password,required String newPassword, required String newConfirmPassword} ) async {
    emit(SettingsProfileStateLoading());
    final user = await authRepository.user;
    if (newPassword == newConfirmPassword) {
      if (user != null) {
        final password_response = await authRepository.updatePassword(
            oldPassword: password, password: newPassword);
        if (password_response is SuccessResponse) {
          emit(SettingsProfileStateSuccess());
        } else {
          emit(SettingsProfileStateFailed(
            message: password_response.failure.toString(),
            dateTime: DateTime.now(),
          ));
        }
      } else {
        emit(SettingsProfileStateErrorUserNoConnected(
          message: "User is null",
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorTextField(
        message: "Password and confirm password are not the same",
        dateTime: DateTime.now(),
      ));
    }

  }

  Future<void> deleteAccount({
  required String password
}) async {
    emit(SettingsProfileStateLoading());
    final user = await authRepository.user;
    if (user != null) {
      final delete_response = await authRepository.deleteAccount(password:  password);
      if (delete_response is SuccessResponse) {
        final delete_user_model_response =
            await userModelRepositoryImpl.deleteUser(uid: user.uid);
        if (delete_user_model_response is SuccessResponse) {
          emit(SettingsProfileStateErrorUserNoConnected(
            message: "User is null",
            dateTime: DateTime.now(),
          ));
        } else {
          emit(SettingsProfileStateFailed(
              message: delete_user_model_response.failure.toString(),
              dateTime: DateTime.now()));
        }
      } else {
        emit(SettingsProfileStateFailed(
          message: delete_response.failure.toString(),
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorUserNoConnected(
        message: "User is null",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> signOut() async {
    emit(SettingsProfileStateLoading());
    final user = await authRepository.user;
    if (user != null) {
      final sign_out_response = await authRepository.signOut();
      if (sign_out_response is SuccessResponse && sign_out_response.data != null) {
        emit(SettingsProfileState.errorUserNoConnected(message: "sign ou", dateTime:  DateTime.now(),));
      } else {
        emit(SettingsProfileStateFailed(
          message: sign_out_response.toString(),
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorUserNoConnected(
        message: "User is null",
        dateTime: DateTime.now(),
      ));
    }
  }


}
