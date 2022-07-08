import 'package:fhds/fhds.dart';
import 'package:fhds/src/colors.dart';
import 'package:flutter/material.dart';

class FHDSText extends StatelessWidget {
  final String text;

  final TextStyle? textStyle;

  final TextAlign? textAlign;

  final FHDSIcons? prefixIcon;

  final FHDSIcons? suffixIcon;

  final double? iconSize;

  const FHDSText(
    this.text, {
    super.key,
    this.textStyle,
    this.textAlign,
    this.prefixIcon,
    this.suffixIcon,
    this.iconSize = kIconSize,
  });

  FHDSText.onChip(
    final String text, {
    Key? key,
    TextAlign? textAlign,
    FHDSIcons? prefixIcon,
    FHDSIcons? suffixIcon,
    Color? color,
  }) : this(
          text,
          textAlign: textAlign,
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
    final TextAlign? textAlign,
  }) : this(
          text,
          textAlign: textAlign,
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
    Key? key,
    final TextAlign? textAlign,
    final FHDSIcons? prefixIcon,
  }) : this(
          text,
          textAlign: textAlign,
          key: key,
          iconSize: kIconSizeOnPanel,
          prefixIcon: prefixIcon,
          textStyle: const TextStyle(
            fontSize: kTextSize,
            fontWeight: FontWeight.w600,
          ),
        );

  const FHDSText.onExpansionTile(
    final String text, {
    Key? key,
    final TextAlign? textAlign,
  }) : this(
          text,
          textAlign: textAlign,
          key: key,
          textStyle: const TextStyle(
            fontSize: kTextSizeOnExpansionTile,
            fontWeight: FontWeight.bold,
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
      textAlign: textAlign,
      style: appliedTextStyle,
    );
  }
}
