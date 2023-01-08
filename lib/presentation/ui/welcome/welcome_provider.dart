import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/picker_photo_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/storage_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/picker_image_cubit.dart';

class WelcomeProvider extends StatelessWidget {
  final Widget child;
  WelcomeProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PickerImageCubit(
        authRepository: context.read<AuthRepositoryImpl>(),
        storageRepository: context.read<StorageRepositoryImpl>(),
        userModelRepositoryImpl: context.read<UserModelRepositoryImpl>(),
        pickerPhotoRepositoryImpl: context.read<PickerPhotoRepositoryImpl>(),
      ),
      child: child,
    );
  }
}
