import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/sign_up_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/sign_up_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/widgets/sign_up_main_bottom.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/widgets/sign_up_main_header.dart';

class SignUpMain extends StatefulWidget {
  const SignUpMain({Key? key}) : super(key: key);

  @override
  State<SignUpMain> createState() => _SignUpMainState();
}

class _SignUpMainState extends State<SignUpMain> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) => state.maybeMap(
        signUp: (value) =>
            context.goNamed('welcome', params: {
          'name': nameController.text,}),
        failed: (value) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'close',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
            content: Text(value.message),
          ),
        ),
        orElse: () => null,
      ),
      builder: (context, state) {
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SignUpMainHeader(),
              SizedBox(
                height: 150,
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
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                  hintText: "Name",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  icon: Icon(
                                    Icons.person,
                                    size: 23,
                                  ),
                                  iconColor: Colors.green,
                                  border: InputBorder.none),
                              style: const TextStyle(fontSize: 15),
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 2,
                              endIndent: 45,
                            ),
                            TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  icon: Icon(
                                    Icons.alternate_email,
                                    size: 23,
                                  ),
                                  iconColor: Colors.green,
                                  border: InputBorder.none),
                              style: const TextStyle(fontSize: 15),
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 2,
                              endIndent: 45,
                            ),
                            TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  icon: Icon(
                                    Icons.lock,
                                    size: 23,
                                  ),
                                  iconColor: Colors.green,
                                  border: InputBorder.none),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.40,
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            context.read<SignUpCubit>().signUp(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  name: nameController.text,
                                );
                          },
                          child: const CircleAvatar(
                            backgroundColor: Color.fromRGBO(0, 109, 119, 1),
                            radius: 50,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Color.fromRGBO(237, 246, 249, 1),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SignUpMainBottom()
            ],
          ),
        );
      },
    );
  }
}
