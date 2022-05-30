part of '../../../main.dart';

ThemeData appLightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.notoSerifDisplayTextTheme(),
  );
}
