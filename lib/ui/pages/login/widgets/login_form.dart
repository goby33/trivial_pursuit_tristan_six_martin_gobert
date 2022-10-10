import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthPage = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 30,
              bottom: 10,
            ),
            width: widthPage * 0.8,
            height: widthPage * 0.35,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 221, 210, 1),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'User',
                    icon: Icon(Icons.person),
                    iconColor: Colors.green,
                  ),
                ),
                TextField(
                  style: TextStyle(fontSize: 15),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password', icon: Icon(Icons.lock)),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: widthPage * 0.09,
          top: 45,
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push("/");
            },
            child: CircleAvatar(
              minRadius: widthPage * 0.09,
              backgroundColor: const Color.fromRGBO(0, 109, 119, 1),
              child: const Icon(
                Icons.arrow_forward,
                size: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
