import 'package:dev_template/product/utils/theme/cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

/// ThemeCubit is used to change the theme of the app
final class ThemeCubit extends HydratedCubit<ThemeState> {
  /// ThemeCubit constructor
  ThemeCubit() : super(const ThemeState());

  /// Takes a [Brightness] object and changes the theme
  ///
  /// If the brightness is dark, then the theme is changed to light
  void changeTheme({required Brightness brightness}) {
    brightness == Brightness.dark
        ? emit(const ThemeState(themeMode: ThemeMode.light))
        : emit(const ThemeState(themeMode: ThemeMode.dark));
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toMap();
  }
}
