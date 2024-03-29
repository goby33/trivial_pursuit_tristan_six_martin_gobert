import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/picker_photo_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/storage_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/picker_image_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/profile/widgets/pop_up/pop_up_profile_photo.dart';

class CirclePhoto extends StatelessWidget {
  final String urlPhoto;

  const CirclePhoto({
    Key? key,
    required this.urlPhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircleAvatar(
        radius: 70.0,
        backgroundColor: Colors.brown,
        child: (urlPhoto != '')
            ? CircleAvatar(
                radius: 68.0,
                backgroundImage: Image.network(
                  urlPhoto,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ).image,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () => _showModal(buildContext: context),
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(226, 149, 120, 1),
                      radius: 17.0,
                      child: Icon(
                        Icons.camera_alt,
                        size: 20.0,
                        color: Color(0xFF404040),
                      ),
                    ),
                  ),
                ),
              )
            : CircleAvatar(
                radius: 68.0,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
      ),
    );
  }

  void _showModal({
    required BuildContext buildContext,
  }) {
    showModalBottomSheet(
      context: buildContext,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      backgroundColor: Color.fromRGBO(237, 246, 249, 1),
      builder: (_) => BlocProvider(
        create: (context) => PickerImageCubit(
          authRepository: buildContext.read<AuthRepositoryImpl>(),
          storageRepository: buildContext.read<StorageRepositoryImpl>(),
          userModelRepositoryImpl: buildContext.read<UserModelRepositoryImpl>(),
          pickerPhotoRepositoryImpl:
              buildContext.read<PickerPhotoRepositoryImpl>(),
        ),
        child: PopUpProfilePhoto(),
      ),
    ).then((value) async {
      print(value);
      if (value != null) {
        if (value == "updated") {
          await buildContext.read<ProfileCubit>().getProfile();
        }
      }
    });
  }
}
