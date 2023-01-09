import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/picker_image_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/picker_image_state.dart';

class PopUpProfilePhoto extends StatelessWidget {
  PopUpProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickerImageCubit, PickerImageState>(
      builder: (contextPickerImage, state) {
        return Container(
          height: 130,
          child: Column(
            children: [
              // pick with camera
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Camera'),
                onTap: () => _pickImage(contextPickerImage, ImageSource.camera),
              ),
              // pick with gallery
              ListTile(
                leading: (state is PickerImageStateLoading) ?  CircularProgressIndicator(): Icon(Icons.photo),
                title: Text('Gallery'),
                onTap: () => _pickImage(contextPickerImage, ImageSource.gallery)
              ),
            ],
          ),
        );
      },
    );
  }

  void _pickImage(BuildContext context, ImageSource source) async {
    await context.read<PickerImageCubit>().pickImage(
          source: source,
        );
    await context.read<PickerImageCubit>().uploadPicture();
    Navigator.pop(context, "updated");
  }
}
