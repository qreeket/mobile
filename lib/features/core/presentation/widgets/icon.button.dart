import 'package:flutter/material.dart';
import 'package:shared_utils/shared_utils.dart';

/// A button with a filled background and an icon.
class FilledIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;

  const FilledIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            color: context.colorScheme.surface, shape: BoxShape.circle),
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: context.colorScheme.outlineVariant)
                .bottom(4)),
      );
}
