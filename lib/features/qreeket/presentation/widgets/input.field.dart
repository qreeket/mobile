import 'package:flutter/material.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:shared_utils/shared_utils.dart';

/// A text field with no border around it.
class InputFieldWithoutBorders extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Function(String?)? onChanged;
  final Function(String)? onSubmitted;
  final bool enabled;
  final TextCapitalization textCapitalization;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;

  const InputFieldWithoutBorders({
    Key? key,
    required this.hint,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onSubmitted,
    this.enabled = true,
    this.textCapitalization = TextCapitalization.none,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final radius = 40.0,
        border = OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius));
    return AnimatedContainer(
      duration: kDurationFast,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius)),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        onChanged: onChanged,
        enabled: enabled,
        textCapitalization: textCapitalization,
        onSubmitted: onSubmitted,
        autocorrect: true,
        scribbleEnabled: true,
        focusNode: focusNode,
        style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.onSurface.withOpacity(kEmphasisHigh)),
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          focusedBorder: border,
          enabledBorder: border,
          disabledBorder: border,
          fillColor: context.colorScheme.surface,
          hintStyle: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurface.withOpacity(kEmphasisLow)),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
