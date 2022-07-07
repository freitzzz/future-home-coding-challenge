import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

const _iconsLabels = <String, FHDSIcons>{
  'Board Members': FHDSIcons.boardMembers,
  'Check': FHDSIcons.check,
  'Common Area': FHDSIcons.commonArea,
  'Copy': FHDSIcons.copy,
  'E-mail': FHDSIcons.email,
  'Exclamation Mark': FHDSIcons.exclamation,
  'Forward': FHDSIcons.forward,
  'Phone': FHDSIcons.phone,
  'Plus': FHDSIcons.plus,
  'Smoke Detector': FHDSIcons.smokeDetector,
  'Up': FHDSIcons.up,
  'Water Leak Detector': FHDSIcons.waterLeakDetector,
};

class DesignSystemIconsView extends StatelessWidget {
  const DesignSystemIconsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons'),
      ),
      body: ListView.separated(
        primary: false,
        itemCount: _iconsLabels.length,
        itemBuilder: (context, index) {
          final entry = _iconsLabels.entries.elementAt(index);

          return Column(
            children: [
              Icon(entry.value),
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
