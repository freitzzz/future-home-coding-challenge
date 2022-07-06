import 'package:fhds/fhds.dart';
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

  const FHDSText.forChip(
    final String text, {
    Key? key,
    FHDSIcons? prefixIcon,
    FHDSIcons? suffixIcon,
  }) : this(
          text,
          key: key,
          iconSize: kIconSizeOnChip,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          textStyle: const TextStyle(
            fontSize: kTextSizeOnChip,
          ),
        );

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text,
        style: textStyle,
        children: [
          if (prefixIcon != null)
            WidgetSpan(
              child: Icon(
                prefixIcon,
                size: iconSize,
              ),
            ),
          TextSpan(
            text: text,
          ),
          if (suffixIcon != null)
            WidgetSpan(
              child: Icon(
                suffixIcon,
                size: iconSize,
              ),
            ),
        ],
      ),
      style: textStyle,
    );
  }
}
