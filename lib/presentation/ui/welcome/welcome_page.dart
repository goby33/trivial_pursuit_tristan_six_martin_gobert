import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
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
                CirclePhotoWelcome(
                  urlPhoto: state.path,
                  loading: (state is WelcomeStateLoading),
                ),
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
                      onPressed: () async => context
                          .read<WelcomeCubit>()
                          .pickImage(source: ImageSource.camera),
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
                      onPressed: () async => context
                          .read<WelcomeCubit>()
                          .pickImage(source: ImageSource.gallery),
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
                    if (state.path != '')
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
}
