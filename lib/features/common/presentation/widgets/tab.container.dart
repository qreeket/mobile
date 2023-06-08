import 'package:flutter/material.dart';
import 'package:shared_utils/shared_utils.dart';

class PilledTabContainer extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final void Function(int) onTabSelected;
  final EdgeInsetsGeometry? margin;
  final Color? background;
  final Color? foreground;
  final Color? labelColor;

  const PilledTabContainer({
    Key? key,
    required this.labels,
    required this.selectedIndex,
    required this.onTabSelected,
    this.margin,
    this.background,
    this.foreground,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: context.width,
        height: kToolbarHeight,
        padding: const EdgeInsets.all(6),
        margin: margin,
        decoration: BoxDecoration(
          color: background ?? context.colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: labels.map(
            (label) {
              var active = labels.indexOf(label) == selectedIndex;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onTabSelected(labels.indexOf(label)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: active
                          ? foreground ?? context.colorScheme.background
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: label
                        .button(context,
                            alignment: TextAlign.center,
                            color: active
                                ? labelColor ?? context.colorScheme.onBackground
                                : context.colorScheme.onSurface)
                        .centered(),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      );
}
