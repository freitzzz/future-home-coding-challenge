import 'package:fhds/fhds.dart';
import 'package:fhds/src/colors.dart';
import 'package:flutter/material.dart';

class FHDSExpansionTile extends StatelessWidget {
  final List<FHDSText> title;

  final Map<String, FHDSText> content;

  final List<FHDSChip> primaryActions;

  final List<FHDSChip> secondaryActions;

  final ValueChanged<bool> onExpansionChanged;

  final bool expanded;

  const FHDSExpansionTile({
    super.key,
    required this.title,
    required this.content,
    required this.primaryActions,
    required this.onExpansionChanged,
    this.secondaryActions = const [],
    this.expanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final labelWithLeastCharacters = (content.keys.toList()
          ..sort(
            (a, b) => a.length.compareTo(b.length),
          ))
        .first;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: FHDSColors.info,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: ExpansionTile(
        initiallyExpanded: expanded,
        onExpansionChanged: onExpansionChanged,
        maintainState: true,
        trailing: const Icon(
          FHDSIcons.up,
          size: kExpansionIconSize,
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text.rich(
            TextSpan(
              children: [
                for (final text in title) ...[
                  WidgetSpan(
                    child: text,
                    alignment: PlaceholderAlignment.middle,
                  ),
                  const WidgetSpan(
                    child: SizedBox(
                      width: kSpacingBetweenExpansionTileTitleText,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        children: [
          for (final info in content.entries)
            Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: FHDSText.onExpansionTile(
                        info.key,
                        textAlign: TextAlign.start,
                      ),
                      alignment: PlaceholderAlignment.middle,
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        width: labelWithLeastCharacters.length *
                            kSpacingBetweenExpansionTileContentText /
                            info.key.length,
                      ),
                    ),
                    WidgetSpan(
                      child: info.value,
                      alignment: PlaceholderAlignment.middle,
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(
            height: kSpacingBetweenExpansionTileContentAndActions,
          ),
          Row(
            children: [
              Wrap(
                spacing: kSpacingBetweenExpansionTileActions,
                children: primaryActions,
              ),
              if (secondaryActions.isNotEmpty) const Spacer(),
              Wrap(
                spacing: kSpacingBetweenExpansionTileActions,
                children: secondaryActions,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
