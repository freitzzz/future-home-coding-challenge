import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

final _textLabels = <String, FHDSText>{
  'Normal': const FHDSText(
    'Text',
  ),
  'With prefix icon': const FHDSText(
    'Text',
    prefixIcon: FHDSIcons.boardMembers,
  ),
  'With suffix icon': const FHDSText(
    'Text',
    suffixIcon: FHDSIcons.copy,
  ),
  'With prefix and suffix icon': const FHDSText(
    'Text',
    prefixIcon: FHDSIcons.boardMembers,
    suffixIcon: FHDSIcons.copy,
  ),
  'With icon size': const FHDSText(
    'Text',
    prefixIcon: FHDSIcons.boardMembers,
    suffixIcon: FHDSIcons.copy,
    iconSize: kIconSizeOnChip,
  ),
  'On chip': FHDSText.onChip(
    'TEXT',
  ),
  'On chip with icon': FHDSText.onChip(
    'TEXT',
    prefixIcon: FHDSIcons.boardMembers,
  ),
  'On panel': const FHDSText.onPanel(
    'Text',
  ),
  'On panel with icon': const FHDSText.onPanel(
    'Text',
    prefixIcon: FHDSIcons.boardMembers,
  ),
  'On warning': const FHDSText.onWarning(
    'Text',
  ),
};

class DesignSystemTextView extends StatelessWidget {
  const DesignSystemTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: ListView.separated(
        primary: false,
        itemCount: _textLabels.length,
        itemBuilder: (context, index) {
          final entry = _textLabels.entries.elementAt(index);

          return Column(
            children: [
              entry.value,
              FHDSText(entry.key),
            ],
          );
        },
        separatorBuilder: (context, _) {
          return const Divider();
        },
      ),
    );
  }
}
