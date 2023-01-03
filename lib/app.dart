import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/setting_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/setting_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/style/app_theme.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/router.dart';

import 'main_provider.dart';

class TrivialPursuitApp extends StatelessWidget {
  TrivialPursuitApp({Key? key}) : super(key: key);

  final _router = AppRoutes.buildRouter();

  @override
  Widget build(BuildContext context) {
    return MainProvider(
      child:  BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: AppTheme().lightTheme,
            darkTheme: AppTheme().darkTheme,
            themeMode: state.themeMode,
            title: 'Trivial Pursuit',
            routeInformationParser: _router.routeInformationParser,
            routerDelegate: _router.routerDelegate,
            routeInformationProvider: _router.routeInformationProvider,
          );
        },
      ),
    );
  }
}
