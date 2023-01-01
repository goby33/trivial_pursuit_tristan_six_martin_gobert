import 'package:flutter/material.dart';

class CirclePhotoWelcome extends StatelessWidget {
  final String urlPhoto;
  CirclePhotoWelcome({Key? key, required this.urlPhoto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      child: CircleAvatar(
        radius: 90.0,
        backgroundColor: Color.fromRGBO(255, 221, 210, 1),
        child: CircleAvatar(
          radius: 87.0,
          backgroundImage: Image.asset(
            urlPhoto,
          ).image,
        ),
      ),
    );
  }
}
