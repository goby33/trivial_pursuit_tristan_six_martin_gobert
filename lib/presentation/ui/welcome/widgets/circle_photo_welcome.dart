import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/welcome_cubit.dart';

class CirclePhotoWelcome extends StatelessWidget {
  final String urlPhoto;
  final bool loading;
  CirclePhotoWelcome({Key? key, required this.urlPhoto, required this.loading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (urlPhoto == '') {
      return Image.asset(
        'assets/images/trivial-pursuit-logo.png',
        width: 200,
      );
    } else {
      return SizedBox(
        child: CircleAvatar(
          radius: 90.0,
          backgroundColor: Color.fromRGBO(255, 221, 210, 1),
          child: CircleAvatar(
            radius: 87.0,
            backgroundImage: Image.asset(
              urlPhoto,
            ).image,
            child:  Align(
              alignment: Alignment.bottomRight,
              child:  (loading)  ? CircularProgressIndicator(): InkWell(
                onTap: () => context.read<WelcomeCubit>().reset(),
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 221, 210, 1),
                  radius: 15.0,
                  child: Icon(
                    Icons.close,
                    size: 20.0,
                    color: Color(0xFF404040),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}