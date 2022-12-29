import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/forgot_password_cubit.dart';

import 'forgot_password_main_bottom.dart';
import 'forgot_password_main_header.dart';

class ForgotPasswordMain extends StatefulWidget {
  const ForgotPasswordMain({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordMain> createState() => _ForgotPasswordMainState();
}

class _ForgotPasswordMainState extends State<ForgotPasswordMain> {
  final emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          const ForgotPasswordMainHeader(),
          SizedBox(
            height: 50,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 221, 210, 1),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey),
                              icon: Icon(
                                Icons.person,
                                size: 23,
                              ),
                              iconColor: Colors.green,
                              border: InputBorder.none),
                          style: const TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () => context
                          .read<ForgotPasswordCubit>()
                          .forgotPassword(email: emailController.text),
                      child: const CircleAvatar(
                        backgroundColor: Color.fromRGBO(0, 109, 119, 1),
                        radius: 20,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color.fromRGBO(237, 246, 249, 1),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const ForgotPasswordMainBottom()
        ],
      ),
    );
  }
}
