import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ThemeEvent { toggle }

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(_initialTheme);

  static final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    // その他のライトモードのテーマ設定
  );

  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    // その他のダークモードのテーマ設定
  );

  static final ThemeData _initialTheme = _lightTheme;

  @override
  Stream<ThemeData> mapEventToState(ThemeEvent event) async* {
    if (event == ThemeEvent.toggle) {
      yield state == _lightTheme ? _darkTheme : _lightTheme;
    }
  }
}
