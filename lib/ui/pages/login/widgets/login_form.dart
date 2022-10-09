import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.only(
              top: 5,
              left: 10,
              right: 60,
              bottom: 5,
            ),
              width: 350,
              height: 150,
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
                children: const [
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'User',
                      icon: Icon(Icons.person),
                      focusColor: Color.fromRGBO(163, 121, 201, 1),
                      fillColor: Color.fromRGBO(163, 121, 201, 1),
                      hoverColor: Color.fromRGBO(163, 121, 201, 1)
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                        icon: Icon(Icons.lock)
                    ),
                  ),
                ],
              )),
        ),
        Positioned(
          right: 40,
          top: 40,
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push("/");
            },
            child: const CircleAvatar(
              minRadius: 40,
              backgroundColor: Color.fromRGBO(0, 109, 119, 1),
              child: Icon(
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
