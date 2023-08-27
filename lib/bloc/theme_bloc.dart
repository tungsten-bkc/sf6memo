import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ThemeEvent {}

class ChangeEvent extends ThemeEvent {}

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(_initialTheme) {
    on<ChangeEvent>((event, emit) async {
      emit(state == _lightTheme ? _darkTheme : _lightTheme);
    });
  }

  static final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    // その他のライトモードのテーマ設定
  );

  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    // その他のダークモードのテーマ設定
  );

  static final ThemeData _initialTheme = _lightTheme;
}
