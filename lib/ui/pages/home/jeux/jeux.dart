import 'package:flutter/material.dart';

class Jeux extends StatefulWidget {
  const Jeux({Key? key}) : super(key: key);


  @override
  State<Jeux> createState() { // Avoid using private types in public APIs.
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
    return const Text("Jeux");
  }
}
