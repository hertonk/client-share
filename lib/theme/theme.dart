import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

mixin CustomTheme {
  static const MaterialColor neutralColors = MaterialColor(
    0xff6f7d98, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xfff2f5fa), //10%
      100: Color(0xffe9ecf5), //20%
      200: Color(0xffdfe4ef), //30%
      300: Color(0xffc2cce0), //40%
      400: Color(0xffa9b5cc), //50%
      500: Color(0xff8c9ab5), //60%
      600: Color(0xff516281), //70%
      700: Color(0xff324260), //80%
      800: Color(0xff172643), //90%
      900: Color(0xff0a1833), //100%
    },
  );
  static const MaterialColor primaryColors = MaterialColor(
    0xFFF6BD37, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFFEF7E7),
      100: Color(0xFFFCEBC3),
      200: Color(0xFFFBDE9B),
      300: Color(0xFFF9D173),
      400: Color(0xFFF7C755),
      500: Color(0xFFF6BD37),
      600: Color(0xFFF5B731),
      700: Color(0xFFF3AE2A),
      800: Color(0xFFF2A623),
      900: Color(0xFFEF9816),
    },
  );

  static const MaterialColor secondaryColors = MaterialColor(
    0xffce6700, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffffefe0), //10%
      100: Color(0xffffdbba), //20%
      200: Color(0xffffc590), //30%
      300: Color(0xffffa757), //40%
      400: Color(0xffef8728), //50%
      500: Color(0xffdd7414), //60%
      600: Color(0xffad5300), //70%
      700: Color(0xff964700), //80%
      800: Color(0xff6c3201), //90%
      900: Color(0xff602e00), //100%
    },
  );

  static const double tabletBreakpoint = 1280;

  static final ThemeData theme1 = ThemeData(
    useMaterial3: true,
    //primarySwatch: Palette.kToDark,
    fontFamily: GoogleFonts.openSans().fontFamily,
    bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
      top: Radius.circular(12),
    ))),
    highlightColor: primaryColors.shade200,
    appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark),
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryColors,
        onPrimary: Colors.white,
        secondary: secondaryColors,
        onSecondary: Colors.white,
        error: const Color(0xffB20D0E),
        onError: Colors.white,
        background: primaryColors.shade50,
        onBackground: neutralColors.shade500,
        surface: neutralColors.shade100,
        onSurface: neutralColors.shade700),
    textTheme: TextTheme(
        displayLarge: TextStyle(
          color: primaryColors.shade900,
          fontSize: 45,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: -1.125,
        ),
        displayMedium: TextStyle(
          color: primaryColors.shade900,
          fontSize: 36,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.9,
        ),
        displaySmall: TextStyle(
          color: primaryColors.shade900,
          fontSize: 28,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.7,
        ),
        headlineLarge: TextStyle(
          color: neutralColors.shade900,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.55,
        ),
        headlineMedium: TextStyle(
          color: primaryColors.shade900,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.45,
        ),
        titleLarge: TextStyle(
          color: neutralColors.shade800,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.45,
        ),
        headlineSmall: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.4,
        ),
        titleMedium: TextStyle(
          color: neutralColors.shade800,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.4,
        ),
        bodyMedium: TextStyle(
          color: neutralColors.shade800,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.45,
        ),
        bodySmall: TextStyle(
          color: neutralColors.shade600,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.4,
        ),
        labelLarge: const TextStyle(
          color: neutralColors,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.4,
        ),
        titleSmall: TextStyle(
          color: primaryColors.shade900,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.35,
        ),
        labelMedium: const TextStyle(
          color: neutralColors,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.35,
        ),
        labelSmall: const TextStyle(
          color: neutralColors,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
      side: BorderSide(color: CustomTheme.neutralColors.shade300),
      borderRadius: BorderRadius.circular(10), // <-- Radius
    ))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primaryColors,
            onPrimary: Colors.white,
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
            shadowColor: CustomTheme.neutralColors.shade50,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),
            padding: const EdgeInsets.all(16))),
    inputDecorationTheme: InputDecorationTheme(
        fillColor: neutralColors.shade200,
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: primaryColors, width: 1.5)),
        hintStyle:
            TextStyle(color: neutralColors.shade600, fontSize: 16, fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        )),
  );
}
