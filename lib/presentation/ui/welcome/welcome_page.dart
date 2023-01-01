import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/welcome_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/welcome_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/welcome_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/welcome_provider.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  Future<void> getImage({
    required BuildContext context,
  }) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        print(image.path);
      }
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
                          onPressed: () async {
                            final image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            context
                                .read<WelcomeCubit>()
                                .uploadPicture(image!.path);
                          },
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
                          onPressed: () async {
                            getImage(context: context);
                          },
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
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style,
                      onPressed: () => context.go('/home'),
                      child: SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text.rich(
                            TextSpan(children: [
                              TextSpan(text: "Skip this step"),
                              WidgetSpan(
                                child: SizedBox(
                                  width: 10,
                                ),
                              ),
                              WidgetSpan(child: Icon(Icons.next_week)),
                            ]),
                          ),
                        ),
                      ),
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
