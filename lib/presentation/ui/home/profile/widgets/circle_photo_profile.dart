import 'package:flutter/material.dart';

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
              )
            : CircleAvatar(
                radius: 68.0,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
      ),
    );
  }
}

//https://banner2.cleanpng.com/20180625/req/kisspng-computer-icons-avatar-business-computer-software-user-avatar-5b3097fcae25c3.3909949015299112927133.jpg
