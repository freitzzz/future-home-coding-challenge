import 'dart:math';

import 'package:fhds/fhds.dart';
import 'package:fhds/src/colors.dart';
import 'package:flutter/material.dart';

class FHDSExpansionTile extends StatefulWidget {
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
  State<FHDSExpansionTile> createState() => _FHDSExpansionTileState();
}

class _FHDSExpansionTileState extends State<FHDSExpansionTile>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween = CurveTween(
    curve: Curves.easeIn,
  );

  static final Animatable<double> _halfTween = Tween<double>(
    begin: 0.0,
    end: 0.5,
  );

  late AnimationController _controller;

  late Animation<double> _iconTurns;

  late bool _isExpanded;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));

    _isExpanded = widget.expanded;

    if (_isExpanded) _controller.value = 1.0;
  }

  @override
  Widget build(BuildContext context) {
    final labelWithLeastCharacters = (widget.content.keys.toList()
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
        initiallyExpanded: widget.expanded,
        onExpansionChanged: (value) {
          setState(
            () {
              _isExpanded = value;

              if (_isExpanded) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            },
          );

          widget.onExpansionChanged(value);
        },
        maintainState: false,
        trailing: RotationTransition(
          turns: _iconTurns,
          child: Transform.rotate(
            angle: -pi,
            child: const Icon(
              FHDSIcons.up,
              size: kExpansionIconSize,
            ),
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text.rich(
            TextSpan(
              children: [
                for (final text in widget.title) ...[
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
          for (final info in widget.content.entries)
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
                children: widget.primaryActions,
              ),
              if (widget.secondaryActions.isNotEmpty) const Spacer(),
              Wrap(
                spacing: kSpacingBetweenExpansionTileActions,
                children: widget.secondaryActions,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
