import 'package:pokedex/utils/strings.dart';
import 'package:flutter/material.dart';

// base theme
final baseTheme = ThemeData.light();

// base border
const outlineInputBorderBase = UnderlineInputBorder(
  borderRadius: BorderRadius.zero,
  borderSide: BorderSide.none,
);

final pokedexTheme = ThemeData(
  scaffoldBackgroundColor: pokedexColors.background,
  backgroundColor: pokedexColors.black.withOpacity(.5),
  primaryColor: pokedexColors.primary,
  appBarTheme: baseTheme.appBarTheme.copyWith(
    backgroundColor: pokedexColors.background,
    elevation: 0,
    foregroundColor: pokedexColors.black,
  ),
  colorScheme: baseTheme.colorScheme.copyWith(
    secondary: pokedexColors.primary,
  ),
  dividerColor: pokedexColors.grey,
  brightness: Brightness.light,
  disabledColor: pokedexColors.grey,
  buttonTheme: baseTheme.buttonTheme.copyWith(
    height: 45,
    minWidth: double.infinity,
    buttonColor: pokedexColors.primary,
    textTheme: ButtonTextTheme.normal,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    disabledColor: pokedexColors.grey,
  ),
  progressIndicatorTheme: baseTheme.progressIndicatorTheme.copyWith(
    color: pokedexColors.primary,
  ),
  inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    filled: true,
    fillColor: pokedexColors.background,
    border: outlineInputBorderBase,
    enabledBorder: outlineInputBorderBase,
    focusedBorder: outlineInputBorderBase,
    labelStyle: TextStyle(
      fontSize: 14,
      color: pokedexColors.text,
      fontWeight: FontWeight.w500,
    ),
    hintStyle: TextStyle(
      fontSize: 16,
      color: pokedexColors.grey,
    ),
  ),
  textTheme: baseTheme.copyWith().textTheme.apply(
        fontFamily: kNotoSans,
        bodyColor: pokedexColors.black,
      ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: pokedexColors.background,
      minimumSize: const Size(double.infinity, 55),
      backgroundColor: pokedexColors.primary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
    ),
  ),
);

// app colors
const pokedexColors = _RareCrewColors(
  primary: Color(0xFF3558CD),
  primaryLight: Color(0xFFD5DEFF),
  background: Color(0xFFE8E8E8),
  text: Color(0xFF161A33),
  grey: Color(0xFF6B6B6B),
  greyWhite: Color(0xFFF3F9EF),
  white: Colors.white,
  black: Colors.black,
);

// app colors model
class _RareCrewColors {
  const _RareCrewColors({
    required this.primary,
    required this.primaryLight,
    required this.background,
    required this.text,
    required this.grey,
    required this.white,
    required this.greyWhite,
    required this.black,
  });

  final Color primary;
  final Color primaryLight;
  final Color background;
  final Color text;
  final Color grey;
  final Color greyWhite;

  final Color white;
  final Color black;
}

// random colors
const randomColors = [
  Color(0xFFCD2873),
  Color(0xFFEEC218),
  Color(0xFF3558CD),
];
