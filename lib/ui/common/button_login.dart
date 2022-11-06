import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/login");
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 10,
          left: 30,
          bottom: 10,
          right: 15,
        ),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(172, 221, 231, 1),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
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
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
