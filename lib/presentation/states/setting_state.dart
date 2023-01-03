import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/style/app_theme.dart';

part 'setting_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SettingState with _$SettingState {
  const SettingState._();

  factory SettingState({
    required DateTime dateTime,
    required ThemeMode themeMode,
  }) = _SettingState;

}