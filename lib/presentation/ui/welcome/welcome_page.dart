import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/welcome_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/welcome_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/welcome_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/welcome_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/widgets/circle_photo_welcome.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  Future<void> getImage({
    required BuildContext context,
    required ImageSource source,
  }) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      context.read<WelcomeCubit>().checkImage(image: image!);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          action: SnackBarAction(
            label: 'close',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
          content: Text(e.toString()),
        ),
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return WelcomeProvider(
      child: WelcomeListeners(
        child: BlocBuilder<WelcomeCubit, WelcomeState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Color.fromRGBO(226, 149, 120, 1),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (state is WelcomeStateLoading)
                      const CircularProgressIndicator(),
                    if (state is WelcomeStatePictureChoosen)
                      CirclePhotoWelcome(
                        urlPhoto: state.path,
                      ),
                    if (state is WelcomeStateInitial)
                      Image.asset(
                        'assets/images/trivial-pursuit-logo.png',
                        width: 200,
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome Tristan',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Please choose your profile picture',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () async => await getImage(
                              context: context, source: ImageSource.camera),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Take a picture'),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 10,
                                  ),
                                ),
                                WidgetSpan(child: Icon(Icons.add_a_photo)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () async => await getImage(
                              context: context, source: ImageSource.gallery),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'From gallery'),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 10,
                                  ),
                                ),
                                WidgetSpan(child: Icon(Icons.collections)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            context.push('/home');
                          },
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'skip'),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 10,
                                  ),
                                ),
                                WidgetSpan(child: Icon(Icons.add_a_photo)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            context
                                .read<WelcomeCubit>()
                                .uploadPicture(path: state.path!);
                          },
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'save and next'),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 10,
                                  ),
                                ),
                                WidgetSpan(child: Icon(Icons.collections)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
