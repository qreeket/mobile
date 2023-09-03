import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:mobile/features/groups/presentation/manager/channel_bloc.dart';
import 'package:mobile/features/core/presentation/manager/core_bloc.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:shared_utils/shared_utils.dart';

/// left side panel group icon widget
class GroupIconWidget extends StatefulWidget {
  final Group group;

  const GroupIconWidget({Key? key, required this.group}) : super(key: key);

  @override
  State<GroupIconWidget> createState() => _GroupIconWidgetState();
}

class _GroupIconWidgetState extends State<GroupIconWidget> {
  @override
  Widget build(BuildContext context) => BlocBuilder(
        bloc: context.read<CoreBloc>(),
        builder: (context, state) {
          var active = state is SuccessState<CoreBlocState> &&
              state.data.group == widget.group;
          return GestureDetector(
            onTap: () {
              context
                  .read<CoreBloc>()
                  .add(SetCurrentGroupEvent(group: widget.group));
              context.read<ChannelBloc>().add(GetChannels(widget.group.id));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: kDurationFast,
                  height: active ? 20 : 8,
                  width: 4,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    color: active
                        ? context.colorScheme.onSurfaceVariant
                        : Colors.transparent,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                ),
                Opacity(
                  opacity: active ? kEmphasisHighest : kEmphasisLow,
                  child: AnimatedContainer(
                    duration: kDurationMedium,
                    height: 40,
                    width: 40,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: context.colorScheme.background,
                      borderRadius: BorderRadius.circular(active ? 20 : 16),
                    ),
                    child: widget.group.icon.toString().avatar(size: 40),
                  ),
                ),
              ],
            ),
          );
        },
      );
}
