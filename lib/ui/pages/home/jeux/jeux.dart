import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/list_questions.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/question.dart';
import 'package:trivial_pursuit_app/tests/jeux_cubit.dart';

class Jeux extends StatefulWidget {
  const Jeux({Key? key}) : super(key: key);

  @override
  State<Jeux> createState() {
    // Avoid using private types in public APIs.
    return _JeuxState();
  }
}

class _JeuxState extends State<Jeux> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocListener<JeuxCubit, JeuxState>(
      listener: (context, state) {},
      child: Text("pp"),
    );
  }
}
