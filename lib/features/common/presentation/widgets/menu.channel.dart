import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/utils/formatters.dart';
import 'package:mobile/features/common/presentation/widgets/overlapping.panels.dart';
import 'package:mobile/features/qreeket/presentation/manager/core_bloc.dart';
import 'package:mobile/features/qreeket/presentation/manager/messaging_bloc.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:shared_utils/shared_utils.dart';

class MenuChannelTile extends StatefulWidget {
  final Channel channel;

  const MenuChannelTile({
    Key? key,
    required this.channel,
  }) : super(key: key);

  @override
  State<MenuChannelTile> createState() => _MenuChannelTileState();
}

class _MenuChannelTileState extends State<MenuChannelTile> {
  late final _icon = widget.channel.type == ChannelType.private
          ? const Icon(TablerIcons.shield_lock, size: 16)
          : const Icon(TablerIcons.hash, size: 16);

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) => BlocBuilder(
          bloc: context.read<CoreBloc>(),
          builder: (context, state) => GestureDetector(
            onTap: () {
              context
                  .read<CoreBloc>()
                  .add(SetCurrentChannelEvent(channel: widget.channel));
              context
                  .read<MessagingBloc>()
                  .add(GetMessagesEvent(channelId: widget.channel.id));
              OverlappingPanelsState.of(context)?.reveal(RevealSide.main);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: state is SuccessState<CoreBlocState> &&
                        state.data.channel?.id == widget.channel.id
                    ? context.colorScheme.outline
                    : null,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  _icon.right(8),
                  formatChannelName(widget.channel.name, false)
                      .caption(context, weight: FontWeight.bold),
                ],
              ),
            ),
          ),
        ),
      );
}
