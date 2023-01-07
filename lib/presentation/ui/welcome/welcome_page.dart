import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/picker_photo_tools.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/welcome_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/welcome_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/welcome_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/welcome_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/widgets/circle_photo_welcome.dart';

class WelcomePage extends StatefulWidget {
  final String name;
  const WelcomePage({Key? key, required this.name}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static XFile? _imageFileList;
  static final ImagePicker _picker = ImagePicker();
  PickerPhotoTools _pickerPhotoTools = PickerPhotoTools.getInstance();

  void _setImageFileListFromFile(XFile? value) {
    _imageFileList = value == null ? null : value;
  }

  Future<void> _onImageButtonPressed({
    required ImageSource source,
  }) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
      );
      if (defaultTargetPlatform == TargetPlatform.android) {
        await retrieveLostData();
      }
      setState(() {
        _setImageFileListFromFile(pickedFile);
      });
    } catch (e) {
      print("error");
      _setImageFileListFromFile(null);
    }
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        if (response.files == null) {
          _setImageFileListFromFile(response.file);
        } else {
          _setImageFileListFromFile(response.file);
        }
      });
    } else {
      print("error not file");
      _setImageFileListFromFile(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WelcomeProvider(
      child: WelcomeListeners(
        child: BlocBuilder<WelcomeCubit, WelcomeState>(builder: (
          context,
          state,
        ) {
          return Scaffold(
            backgroundColor: Color.fromRGBO(226, 149, 120, 1),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo or image
                _previewImages(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome ${widget.name}',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Please choose your profile picture',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 221, 210, 1),
                      ),
                      onPressed: () async {
                        await _pickerPhotoTools.onImageButtonPressed(
                            source: ImageSource.camera);
                        context.read<WelcomeCubit>().checkImage();
                      },
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 24.0,
                      ),
                      label: Text('Take a picture',
                          style: TextStyle(
                              color: Color.fromRGBO(226, 149, 120, 1))),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 221, 210, 1),
                      ),
                      onPressed: () async {
                        await _pickerPhotoTools.onImageButtonPressed(
                            source: ImageSource.gallery);
                        context.read<WelcomeCubit>().checkImage();
                      },
                      icon: Icon(
                        Icons.collections,
                        size: 24.0,
                      ),
                      label: Text('From gallery',
                          style: TextStyle(
                              color: Color.fromRGBO(226, 149, 120, 1))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () => context.push('/home'),
                      icon: Icon(
                        Icons.no_photography,
                        size: 24.0,
                      ),
                      label: Text('Skip'),
                    ),
                    if (_imageFileList != null &&
                        _imageFileList!.path.isNotEmpty)
                      ElevatedButton.icon(
                        onPressed: () =>
                            context.read<WelcomeCubit>().uploadPicture(),
                        icon: Icon(
                          Icons.collections,
                          size: 24.0,
                        ),
                        label: Text('Save my photo'),
                      ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _previewImages() {
    // if android or ios
    if (_pickerPhotoTools.imageFileList != null) {
      return CirclePhotoWelcome(
        urlPhoto: _pickerPhotoTools.imageFileList!.path,
        loading: false,
      );
    } else {
      return CirclePhotoWelcome(
        urlPhoto: '',
        loading: false,
      );
    }
  }
}
