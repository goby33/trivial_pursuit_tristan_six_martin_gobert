import 'package:flutter/material.dart';

class CirclePhoto extends StatelessWidget {
  final String urlPhoto;

  const CirclePhoto({Key? key, required this.urlPhoto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircleAvatar(
        radius: 70.0,
        backgroundColor: Colors.brown,
        child: CircleAvatar(
          radius: 68.0,
          backgroundImage: NetworkImage(
            urlPhoto,
          ),
          child: const Align(
            alignment: Alignment.bottomRight,
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
      ),
    );
  }
}
