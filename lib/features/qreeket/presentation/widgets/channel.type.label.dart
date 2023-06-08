import 'package:flutter/material.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:shared_utils/shared_utils.dart';

/// A widget that displays the channel type label.
class ChannelTypeLabel extends StatelessWidget {
  final ChannelType type;

  const ChannelTypeLabel({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(TablerIcons.chevron_down, size: 16).right(8).bottom(2),
          formatChannelTypeName(context)
              .toUpperCase()
              .overline(context, weight: FontWeight.bold),
        ],
      ).align(Alignment.centerLeft).top(24);

  String formatChannelTypeName(BuildContext context) =>
      type == ChannelType.private
          ? context.localizer.privateChannels
          : context.localizer.publicChannels;
}
