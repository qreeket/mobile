import 'dart:core';

import 'package:flutter/material.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:shared_utils/shared_utils.dart';

const double bleedWidth = 10;

/// Display sections
enum RevealSide { left, right, main }

/// Widget to display three view panels with the [OverlappingPanels.main] being
/// in the center, [OverlappingPanels.left] and [OverlappingPanels.right] also
/// revealing from their respective sides. Just like you will see in the
/// Discord mobile app's navigation.
///
/// ref -> https://github.com/blackmann/overlapping_panels/blob/master/lib/overlapping_panels.dart
class OverlappingPanels extends StatefulWidget {
  /// The left panel
  final Widget? left;

  /// The main panel
  final Widget? main;

  /// The right panel
  final Widget? right;

  /// The offset to use to keep the main panel visible when the left or right
  /// panel is revealed.
  final double restWidth;

  /// A callback to notify when a panel reveal has completed.
  final ValueChanged<RevealSide>? onSideChange;

  const OverlappingPanels({
    this.main,
    this.left,
    this.right,
    this.restWidth = 64,
    this.onSideChange,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => OverlappingPanelsState();
}

class OverlappingPanelsState extends State<OverlappingPanels>
    with TickerProviderStateMixin {
  AnimationController? controller;
  double translate = 0;

  static OverlappingPanelsState? of(BuildContext context) =>
      context.findAncestorStateOfType<OverlappingPanelsState>();

  double _calculateGoal(double width, int multiplier) {
    return (multiplier * width) + (-multiplier * widget.restWidth);
  }

  void _onApplyTranslation() {
    final mediaWidth = context.width;

    final animationController =
        AnimationController(vsync: this, duration: kDurationFast);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onSideChange?.call(translate == 0
            ? RevealSide.main
            : (translate > 0 ? RevealSide.left : RevealSide.right));
        animationController.dispose();
      }
    });

    if (translate.abs() >= mediaWidth / 2) {
      final multiplier = (translate > 0 ? 1 : -1);
      final goal = _calculateGoal(mediaWidth, multiplier);
      final Tween<double> tween = Tween(begin: translate, end: goal);

      final animation = tween.animate(animationController);

      animation.addListener(() => setState(() => translate = animation.value));
    } else {
      final animation =
          Tween<double>(begin: translate, end: 0).animate(animationController);

      animation.addListener(() => setState(() => translate = animation.value));
    }

    animationController.forward();
  }

  void reveal(RevealSide direction) {
    final mediaWidth = context.width;

    final multiplier = (direction == RevealSide.left
        ? 1
        : direction == RevealSide.main
            ? 0
            : -1);
    final goal = _calculateGoal(mediaWidth, multiplier);

    final animationController =
        AnimationController(vsync: this, duration: kDurationFast);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _onApplyTranslation();
        animationController.dispose();
      }
    });

    final animation =
        Tween<double>(begin: translate, end: goal).animate(animationController);

    animation.addListener(() => setState(() => translate = animation.value));

    animationController.forward();
  }

  void onTranslate(double delta) => setState(() {
        final translate = this.translate + delta;
        if (translate < 0 && widget.right != null ||
            translate > 0 && widget.left != null) {
          this.translate = translate;
        }
      });

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          // right panel
          Offstage(
            offstage: translate > 0,
            child: Container(
              margin: EdgeInsets.only(
                  top: context.mediaQuery.padding.top,
                  right: context.mediaQuery.padding.right + 12,
                  bottom: 8,
                  left: context.mediaQuery.padding.left + widget.restWidth),
              width: context.width - widget.restWidth,
              child: widget.right,
            ).align(Alignment.centerRight),
          ),

          // left panel
          Offstage(
            offstage: translate < 0,
            child: Container(
              width: context.width - widget.restWidth,
              margin: const EdgeInsets.only(right: bleedWidth),
              child: widget.left,
            ),
          ),

          // main panel
          Transform.translate(
            offset: Offset(translate, 0),
            child: Opacity(
                // TODO -> fix opacity issue
                opacity: translate == 0 ? kEmphasisHighest : kEmphasisLow,
                child: widget.main),
          ).horizontal(translate == 0 ? 0 : bleedWidth),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onHorizontalDragUpdate: (details) => onTranslate(details.delta.dx),
            onHorizontalDragEnd: (_) => _onApplyTranslation(),
          ),
        ],
      );
}
