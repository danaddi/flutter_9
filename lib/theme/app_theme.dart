import 'package:flutter/material.dart';

abstract final class AppTheme {
  static final light = _build(
    brightness: Brightness.light,
    background: const Color(0xFFF3F7F0),
    appBar: const Color(0xFF315637),
    text: const Color(0xFF18291C),
    card: const Color(0xFFE3EDDF),
    icon: const Color(0xFF315637),
    button: const Color(0xFF315637),
    buttonText: Colors.white,
  );

  static final dark = _build(
    brightness: Brightness.dark,
    background: const Color(0xFF141B15),
    appBar: const Color(0xFF263F2B),
    text: const Color(0xFFE5EFE2),
    card: const Color(0xFF253228),
    icon: const Color(0xFFB5D8AC),
    button: const Color(0xFFB5D8AC),
    buttonText: const Color(0xFF192D1C),
  );

  static ThemeData _build({
    required Brightness brightness,
    required Color background,
    required Color appBar,
    required Color text,
    required Color card,
    required Color icon,
    required Color button,
    required Color buttonText,
  }) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF315637),
        brightness: brightness,
      ).copyWith(surface: background, onSurface: text),
      scaffoldBackgroundColor: background,
      appBarTheme: AppBarThemeData(
        backgroundColor: appBar,
        foregroundColor: Colors.white,
      ),
      cardTheme: CardThemeData(color: card),
      iconTheme: IconThemeData(color: icon),
      listTileTheme: ListTileThemeData(iconColor: icon),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: button,
          foregroundColor: buttonText,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
