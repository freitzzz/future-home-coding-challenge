import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

const _chipsLabels = <String, FHDSChip>{
  'Single label': FHDSChip(
    label: 'LABEL',
    onPressed: _onChipPressed,
  ),
  'With prefix icon': FHDSChip(
    label: 'LABEL',
    prefixIcon: FHDSIcons.plus,
    onPressed: _onChipPressed,
  ),
  'With suffix icon': FHDSChip(
    label: 'LABEL',
    suffixIcon: FHDSIcons.forward,
    onPressed: _onChipPressed,
  ),
  'With prefix and suffix icon': FHDSChip(
    label: 'LABEL',
    prefixIcon: FHDSIcons.plus,
    suffixIcon: FHDSIcons.forward,
    onPressed: _onChipPressed,
  ),
  'Secondary': FHDSChip(
    label: 'LABEL',
    onPressed: _onChipPressed,
    secondary: true,
  ),
};

class DesignSystemChipsView extends StatelessWidget {
  const DesignSystemChipsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chips'),
      ),
      body: ListView.separated(
        primary: false,
        itemCount: _chipsLabels.length,
        itemBuilder: (context, index) {
          final entry = _chipsLabels.entries.elementAt(index);

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

void _onChipPressed() {}
