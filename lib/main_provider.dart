import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/repositories/auth_repository_impl.dart';

class MainProvider extends StatelessWidget {
  final Widget child;
  const MainProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepositoryImpl.getInstance(),
      child: child,
    );
  }
}