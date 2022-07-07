import 'package:fhds/src/colors.dart';
import 'package:flutter/material.dart';

const _kFontFamily = 'OpenSans';

final _textThemeLight = ThemeData.light().textTheme;
final _textThemeDark = ThemeData.dark().textTheme;

final _lightColorScheme = ColorScheme.fromSeed(
  seedColor: FHDSColors.seed,
  brightness: Brightness.light,
  primary: FHDSColors.black,
  background: FHDSColors.trueWhite,
  onPrimary: FHDSColors.lightGray,
  onBackground: FHDSColors.black,
);

final _darkColorScheme = ColorScheme.fromSeed(
  seedColor: FHDSColors.seed,
  brightness: Brightness.dark,
  primary: FHDSColors.black,
  background: FHDSColors.trueWhite,
  onPrimary: FHDSColors.lightGray,
  onBackground: FHDSColors.black,
);

final fhdsLightTheme = ThemeData(
  textTheme: _textThemeLight,
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  fontFamily: _kFontFamily,
  chipTheme: const ChipThemeData(
    backgroundColor: FHDSColors.black,
    elevation: 0.0,
    side: BorderSide(
      width: 1.0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(25.0),
      ),
    ),
    labelPadding: EdgeInsets.zero,
    padding: EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 5.0),
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    tilePadding: EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    childrenPadding: EdgeInsets.symmetric(
      horizontal: 10.0,
      vertical: 10.0,
    ),
  ),
);

final fhdsDarkTheme = ThemeData(
  textTheme: _textThemeDark,
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  fontFamily: _kFontFamily,
  chipTheme: const ChipThemeData(
    backgroundColor: FHDSColors.black,
    elevation: 0.0,
    side: BorderSide(
      width: 1.0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(25.0),
      ),
    ),
    labelPadding: EdgeInsets.zero,
    padding: EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 5.0),
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    tilePadding: EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    childrenPadding: EdgeInsets.symmetric(
      horizontal: 10.0,
      vertical: 10.0,
    ),
  ),
);
