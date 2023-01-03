import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingState(dateTime: DateTime.now(),themeMode: ThemeMode.light  ));

  void changeTheme() {
    if (state.themeMode == ThemeMode.light) {
      print("light");
      emit(SettingState(dateTime: DateTime.now(),themeMode: ThemeMode.dark));
    } else {
      print("dark");
      emit(SettingState(dateTime: DateTime.now(),themeMode: ThemeMode.light));
    }

  }
}
