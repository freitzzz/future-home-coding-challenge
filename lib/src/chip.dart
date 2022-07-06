import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

class FHDSChip extends StatelessWidget {
  final String label;

  final FHDSIcons? prefixIcon;

  final FHDSIcons? suffixIcon;

  final VoidCallback onPressed;

  final bool secondary;

  const FHDSChip({
    super.key,
    required this.label,
    required this.onPressed,
    this.prefixIcon,
    this.suffixIcon,
    this.secondary = false,
  });

  const FHDSChip.secondary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    FHDSIcons? prefixIcon,
    FHDSIcons? suffixIcon,
  }) : this(
          label: label,
          onPressed: onPressed,
          key: key,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          secondary: true,
        );

  @override
  Widget build(BuildContext context) {
    ColorScheme? colorScheme;

    if (secondary) {
      colorScheme = Theme.of(context).colorScheme;
    }

    return ActionChip(
      label: FHDSText.onChip(
        label,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      avatar: Icon(prefixIcon),
      onPressed: onPressed,
      backgroundColor: colorScheme?.background,
      side: colorScheme != null
          ? BorderSide(
              color: colorScheme.onBackground,
              style: BorderStyle.solid,
            )
          : null,
    );
  }
}
