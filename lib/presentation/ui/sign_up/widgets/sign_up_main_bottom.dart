import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpMainBottom extends StatelessWidget {
  const SignUpMainBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            context.push('/sign-in');
          },
          child: Container(
            padding: const EdgeInsets.only(
              top: 10,
              left: 30,
              bottom: 10,
              right: 15,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 109, 119, 1),
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
            child: const Text(
              "Sign in",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(255, 221, 210, 1),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: InkWell(
            onTap: () => context.push("/forgot-password"),
            child: const Text(
              "Forgot ? ",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(173, 185, 227, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
