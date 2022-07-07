import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

final _panelsLabels = <String, FHDSPanel>{
  'Sample': FHDSPanel(
    title: const FHDSText.onPanel(
      'Common area',
      prefixIcon: FHDSIcons.commonArea,
    ),
    actions: const [
      FHDSChip(
        label: 'CONTACT',
        prefixIcon: FHDSIcons.plus,
        onPressed: _onChipPressed,
      ),
      FHDSChip(
        label: 'ROOM',
        prefixIcon: FHDSIcons.plus,
        onPressed: _onChipPressed,
      ),
      FHDSChip(
        label: 'DEVICE',
        prefixIcon: FHDSIcons.plus,
        onPressed: _onChipPressed,
      ),
      FHDSChip(
        label: '8 NOTES',
        suffixIcon: FHDSIcons.forward,
        onPressed: _onChipPressed,
      ),
    ],
    content: List.generate(
      25,
      (index) => const FHDSExpansionTile(
        onExpansionChanged: _onExpansionChanged,
        title: [
          FHDSText(
            'Board member',
            prefixIcon: FHDSIcons.boardMembers,
            suffixIcon: FHDSIcons.copy,
          ),
          FHDSText(
            '+47 444 44 444',
            prefixIcon: FHDSIcons.phone,
            suffixIcon: FHDSIcons.copy,
          ),
          FHDSText(
            'Priority 1',
          ),
          FHDSText(
            'mario@castle.com',
            prefixIcon: FHDSIcons.email,
            suffixIcon: FHDSIcons.copy,
          ),
        ],
        content: {
          'UPDATED AT': FHDSText(
            '01.01.1970',
          ),
          'ADDRESS': FHDSText(
            '2_0',
            suffixIcon: FHDSIcons.copy,
          ),
          'DEVICE ID': FHDSText(
            '1',
          ),
        },
        primaryActions: [
          FHDSChip(
            label: 'EDIT',
            onPressed: _onChipPressed,
          ),
          FHDSChip(
            label: 'DELETE',
            onPressed: _onChipPressed,
          ),
        ],
        secondaryActions: [
          FHDSChip(
            label: 'TIMELINE',
            onPressed: _onChipPressed,
            suffixIcon: FHDSIcons.forward,
          ),
          FHDSChip(
            label: '8 NOTES',
            suffixIcon: FHDSIcons.forward,
            onPressed: _onChipPressed,
          ),
        ],
      ),
    ),
  ),
};

class DesignSystemPanelsView extends StatelessWidget {
  const DesignSystemPanelsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panels'),
      ),
      body: _panelsLabels.values.first,
    );
  }
}

void _onExpansionChanged(final bool state) {}

void _onChipPressed() {}
