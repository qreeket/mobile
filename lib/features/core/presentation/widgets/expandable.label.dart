import 'package:flutter/material.dart';
import 'package:shared_utils/shared_utils.dart';

class ExpandableLabel extends StatelessWidget {
  final String label;
  final void Function(bool)? onTap;

  const ExpandableLabel({
    Key? key,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _collapsed = false;
    return StatefulBuilder(
        builder: (context, setState) => GestureDetector(
              onTap: () {
                setState(() => _collapsed = !_collapsed);
                onTap?.call(_collapsed);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                          _collapsed
                              ? TablerIcons.chevron_right
                              : TablerIcons.chevron_down,
                          size: 16)
                      .right(8)
                      .bottom(2),
                  label
                      .toUpperCase()
                      .overline(context, weight: FontWeight.bold),
                ],
              ).align(Alignment.centerLeft).top(8),
            ));
  }
}
