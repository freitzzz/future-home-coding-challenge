import 'package:fhds/fhds.dart';
import 'package:fhds/src/colors.dart';
import 'package:flutter/material.dart';

class FHDSText extends StatelessWidget {
  final String text;

  final TextStyle? textStyle;

  final FHDSIcons? prefixIcon;

  final FHDSIcons? suffixIcon;

  final double? iconSize;

  const FHDSText(
    this.text, {
    super.key,
    this.textStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.iconSize,
  });

  FHDSText.onChip(
    final String text, {
    Key? key,
    FHDSIcons? prefixIcon,
    FHDSIcons? suffixIcon,
    Color? color,
  }) : this(
          text,
          key: key,
          iconSize: kIconSizeOnChip,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          textStyle: TextStyle(
            color: color,
            fontSize: kTextSizeOnChip,
            fontWeight: FontWeight.bold,
          ),
        );

  const FHDSText.onWarning(
    final String text, {
    Key? key,
  }) : this(
          text,
          key: key,
          iconSize: kIconSize,
          prefixIcon: FHDSIcons.exclamation,
          textStyle: const TextStyle(
            color: FHDSColors.warning,
            fontSize: kTextSize,
            fontWeight: FontWeight.w600,
          ),
        );

  const FHDSText.onPanel(
    final String text, {
    final FHDSIcons? prefixIcon,
    Key? key,
  }) : this(
          text,
          key: key,
          iconSize: kIconSize,
          textStyle: const TextStyle(
            fontSize: kTextSize,
            fontWeight: FontWeight.w600,
          ),
        );

  @override
  Widget build(BuildContext context) {
    final appliedTextStyle = textStyle ??
        const TextStyle(
          fontSize: kTextSize,
        );

    return Text.rich(
      TextSpan(
        style: appliedTextStyle,
        children: [
          if (prefixIcon != null)
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: kSpacingBetweenTextAndIcon,
                ),
                child: Icon(
                  prefixIcon,
                  size: iconSize,
                  color: appliedTextStyle.color,
                ),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
          TextSpan(
            text: text,
          ),
          if (suffixIcon != null)
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: kSpacingBetweenTextAndIcon,
                ),
                child: Icon(
                  suffixIcon,
                  size: iconSize,
                  color: appliedTextStyle.color,
                ),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
        ],
      ),
      style: appliedTextStyle,
    );
  }
}
