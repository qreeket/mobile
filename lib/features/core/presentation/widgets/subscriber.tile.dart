import 'package:flutter/material.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:shared_utils/shared_utils.dart';

class SubscriberListTile extends StatefulWidget {
  final Subscriber subscriber;

  const SubscriberListTile({Key? key, required this.subscriber})
      : super(key: key);

  @override
  State<SubscriberListTile> createState() => _SubscriberListTileState();
}

class _SubscriberListTileState extends State<SubscriberListTile> {
  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          height: 40,
          width: 40,
          child: Stack(
            children: [
              widget.subscriber.avatar.avatar(size: 40, circular: true),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: widget.subscriber.online
                        ? context.colorScheme.tertiary
                        : context.colorScheme.outlineVariant,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: widget.subscriber.online
                          ? context.colorScheme.background
                          : context.colorScheme.outline,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title:
            widget.subscriber.name.subtitle2(context, weight: FontWeight.bold),
        // TODO -> show user profile
        onTap: context.showFeatureUnderDevSheet,
        // subtitle: 'Seen in chat'.caption(context, emphasis: kEmphasisMedium),
      );
}
