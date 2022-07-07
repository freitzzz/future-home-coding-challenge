import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

class FHDSPanel extends StatelessWidget {
  final FHDSText title;

  final List<FHDSExpansionTile> content;

  final List<FHDSChip> actions;

  const FHDSPanel({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: title,
            ),
            Wrap(
              spacing: kSpacingBetweenPanelActions,
              children: actions,
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return content[index];
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.transparent,
                height: kSpacingBetweenPanelContent,
              );
            },
            itemCount: content.length,
            padding: const EdgeInsets.only(
              top: kSpacingBetweenPanelContent,
            ),
          ),
        ),
      ],
    );
  }
}
