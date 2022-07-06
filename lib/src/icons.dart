import 'package:flutter/widgets.dart';

const String _kFontFamily = 'fhds';
const String _kFontPackage = 'fhds';

class FHDSIcons extends IconData {
  const FHDSIcons(
    super.codePoint,
  ) : super(fontFamily: _kFontFamily, fontPackage: _kFontPackage);

  static const FHDSIcons boardMembers = FHDSIcons(0xe900);
  static const FHDSIcons check = FHDSIcons(0xe901);
  static const FHDSIcons commonArea = FHDSIcons(0xe902);
  static const FHDSIcons copy = FHDSIcons(0xe903);
  static const FHDSIcons email = FHDSIcons(0xe904);
  static const FHDSIcons exclamation = FHDSIcons(0xe905);
  static const FHDSIcons forward = FHDSIcons(0xe906);
  static const FHDSIcons phone = FHDSIcons(0xe907);
  static const FHDSIcons plus = FHDSIcons(0xe908);
  static const FHDSIcons smokeDetector = FHDSIcons(0xe909);
  static const FHDSIcons up = FHDSIcons(0xe90a);
  static const FHDSIcons waterLeakDetector = FHDSIcons(0xe90b);
}
