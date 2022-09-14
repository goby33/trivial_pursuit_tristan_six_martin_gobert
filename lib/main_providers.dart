import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainProviders extends StatelessWidget {
  final Widget child;

  MainProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [

        ],
      child: child,

    );
  }
}
