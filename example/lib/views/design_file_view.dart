import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

class DesignFileView extends StatelessWidget {
  const DesignFileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design File'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(25.0),
        child: FHDSPanel(
          title: FHDSText.onPanel(
            'Common area',
            prefixIcon: FHDSIcons.commonArea,
          ),
          actions: [
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
          content: [
            FHDSExpansionTile(
              onExpansionChanged: _onExpansionChanged,
              expanded: true,
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
            ),
            FHDSExpansionTile(
              onExpansionChanged: _onExpansionChanged,
              expanded: true,
              title: [
                FHDSText(
                  'Smoke detector',
                  prefixIcon: FHDSIcons.smokeDetector,
                ),
                FHDSText.onWarning(
                  'Offline',
                ),
                FHDSText.onWarning(
                  'Tampered',
                ),
                FHDSText(
                  'Configured',
                  prefixIcon: FHDSIcons.check,
                ),
              ],
              content: {
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
                  label: 'UNPAIR',
                  onPressed: _onChipPressed,
                ),
                FHDSChip(
                  label: 'DELETE',
                  onPressed: _onChipPressed,
                ),
                FHDSChip(
                  label: 'IDENTIFY',
                  onPressed: _onChipPressed,
                ),
                FHDSChip(
                  label: 'PING',
                  onPressed: _onChipPressed,
                ),
                FHDSChip(
                  label: 'SENSITIVITY',
                  onPressed: _onChipPressed,
                ),
                FHDSChip.secondary(
                  label: 'TEST SIREN',
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
            FHDSExpansionTile(
              onExpansionChanged: _onExpansionChanged,
              expanded: true,
              title: [
                FHDSText(
                  'Water leak detector',
                  prefixIcon: FHDSIcons.waterLeakDetector,
                ),
                FHDSText(
                  'Online',
                  prefixIcon: FHDSIcons.check,
                ),
                FHDSText(
                  'Secured',
                  prefixIcon: FHDSIcons.check,
                ),
                FHDSText(
                  'Configured',
                  prefixIcon: FHDSIcons.check,
                ),
              ],
              content: {
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
                  label: 'UNPAIR',
                  onPressed: _onChipPressed,
                ),
                FHDSChip(
                  label: 'IDENTIFY',
                  onPressed: _onChipPressed,
                ),
                FHDSChip(
                  label: 'PING',
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
          ],
        ),
      ),
    );
  }
}

void _onExpansionChanged(final bool state) {}

void _onChipPressed() {}
