import 'package:example/routing/routing.dart';
import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

const _showcaseWidgets = <String, NavigatorCallback>{
  'Chips': navigateToDesignSystemChips,
  'Expansion Tiles': navigateToDesignSystemExpansionTiles,
  'Panel': navigateToDesignSystemPanels,
  'Custom Icons': navigateToDesignSystemIcons,
  'Text': navigateToDesignSystemText,
};

class DesignSystemView extends StatelessWidget {
  const DesignSystemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design System'),
      ),
      body: ListView.separated(
        primary: false,
        itemCount: _showcaseWidgets.length,
        itemBuilder: (context, index) {
          final entry = _showcaseWidgets.entries.elementAt(index);

          return ListTile(
            onTap: () => entry.value(context),
            title: FHDSText(entry.key),
            trailing: const Icon(
              FHDSIcons.forward,
            ),
          );
        },
        separatorBuilder: (context, _) {
          return const Divider();
        },
      ),
    );
  }
}
