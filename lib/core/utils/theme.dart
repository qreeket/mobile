import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_utils/shared_utils.dart';

extension ThemeBuilderX on BuildContext {
  ThemeData get useLightTheme {
    const disabledColor = Color(0xffA1A5AB);
    final colorScheme = useColorScheme();
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: colorScheme.background,
      disabledColor: disabledColor,
      colorScheme: colorScheme,
      platform: TargetPlatform.iOS,
      buttonTheme: ButtonThemeData(
          colorScheme: colorScheme,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
      dividerTheme: DividerThemeData(
          color: colorScheme.surfaceVariant,
          indent: 8,
          endIndent: 8,
          space: 16),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.onSecondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.background,
          elevation: 0,
          scrolledUnderElevation: 0),
      textTheme: _textTheme(),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surface,
        prefixIconColor: colorScheme.onSurface.withOpacity(kEmphasisMedium),
        hintStyle:
            TextStyle(color: colorScheme.onSurface.withOpacity(kEmphasisLow)),
        labelStyle: TextStyle(
            color: colorScheme.onSurface.withOpacity(kEmphasisMedium)),
        suffixIconColor: colorScheme.onSurface.withOpacity(kEmphasisMedium),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.surface),
            borderRadius: BorderRadius.circular(40)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.surface),
            borderRadius: BorderRadius.circular(40)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.secondary),
            borderRadius: BorderRadius.circular(40)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.error),
            borderRadius: BorderRadius.circular(40)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.error),
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }

  ThemeData get useDarkTheme {
    final colorScheme = useColorScheme(ThemeMode.dark);
    return ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: colorScheme,
      platform: TargetPlatform.iOS,
      textTheme: _textTheme(Colors.white),
      scaffoldBackgroundColor: colorScheme.background,
      buttonTheme: ButtonThemeData(
          colorScheme: colorScheme,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
      dividerTheme: DividerThemeData(
          color: colorScheme.onBackground.withOpacity(kEmphasisLowest),
          indent: 8,
          endIndent: 8,
          space: 16),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.onSecondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.background,
          elevation: 0,
          scrolledUnderElevation: 0),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surface,
        prefixIconColor: colorScheme.onSurface.withOpacity(kEmphasisMedium),
        hintStyle:
            TextStyle(color: colorScheme.onSurface.withOpacity(kEmphasisLow)),
        labelStyle: TextStyle(
            color: colorScheme.onSurface.withOpacity(kEmphasisMedium)),
        suffixIconColor: colorScheme.onSurface.withOpacity(kEmphasisMedium),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.surface),
            borderRadius: BorderRadius.circular(40)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.surface),
            borderRadius: BorderRadius.circular(40)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.secondary),
            borderRadius: BorderRadius.circular(40)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.error),
            borderRadius: BorderRadius.circular(40)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.error),
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}

/// setup color scheme
ColorScheme useColorScheme([ThemeMode mode = ThemeMode.light]) =>
    mode == ThemeMode.light
        ? const ColorScheme.light(
            background: Colors.white,
            // background: Color(0xffF7F6F0),
            onBackground: Colors.black,
            // secondary: Color(0xffFF5465),
            secondary: Color(0xff241744),
            onSecondary: Colors.white,
            primary: Color(0xff241744),
            onPrimary: Colors.white,
            surface: Color(0xffF2F3F5),
            onSurface: Colors.black,
            surfaceVariant: Color(0xffE4E5E9),
            onSurfaceVariant: Colors.black,
            outline: Color(0xffEBEDEE),
            outlineVariant: Colors.black,
            error: Colors.deepOrangeAccent,
            onError: Colors.white,
            errorContainer: Colors.deepOrange,
            onErrorContainer: Colors.white,
            tertiary: Color(0xff01fa47),
            onTertiary: Colors.black,
            tertiaryContainer: Color(0xffAF7515),
            onTertiaryContainer: Colors.white,
          )
        : const ColorScheme.dark(
            // background: Color(0xff2F3136),
            background: Color(0xff2F3136),
            onBackground: Colors.white,
            // secondary: Color(0xffA4A8ED),
            secondary: Color(0xffFF5465),
            onSecondary: Colors.black,
            primary: Color(0xffFF5465),
            onPrimary: Colors.black,
            // surface: Color(0xff2F3136),
            surface: Color(0xff202225),
            onSurface: Colors.white,
            surfaceVariant: Color(0xff18191C),
            onSurfaceVariant: Colors.white,
            error: Colors.pinkAccent,
            onError: Colors.black,
            errorContainer: Colors.pinkAccent,
            onErrorContainer: Colors.black,
            tertiary: Color(0xff67CD84),
            onTertiary: Colors.white,
            // onTertiary: Color(0xff949BA4),
            outline: Color(0xff2B2D31),
            outlineVariant: Color(0xff4F545C),
            tertiaryContainer: Color(0xffAF7515),
            onTertiaryContainer: Colors.white,
          );

/// setup font
const _primaryFont = GoogleFonts.dmSans, _secondaryFont = GoogleFonts.dmSans;

TextTheme _textTheme([Color textColor = Colors.black]) => TextTheme(
      displayLarge: _primaryFont(
          color: textColor,
          fontSize: 105,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5),
      displayMedium: _primaryFont(
          color: textColor,
          fontSize: 65,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5),
      displaySmall: _primaryFont(
          color: textColor, fontSize: 52, fontWeight: FontWeight.w400),
      headlineMedium: _primaryFont(
          color: textColor,
          fontSize: 37,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25),
      headlineSmall: _primaryFont(
          color: textColor, fontSize: 26, fontWeight: FontWeight.w400),
      titleLarge: _primaryFont(
          color: textColor,
          fontSize: 22,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15),
      titleMedium: _primaryFont(
          color: textColor,
          fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15),
      titleSmall: _primaryFont(
          color: textColor,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1),
      bodyLarge: _secondaryFont(
          color: textColor,
          fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5),
      bodyMedium: _secondaryFont(
          color: textColor,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25),
      labelLarge: _secondaryFont(
          color: textColor,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25),
      bodySmall: _secondaryFont(
          color: textColor,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4),
      labelSmall: _secondaryFont(
          color: textColor,
          fontSize: 11,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5),
    );
