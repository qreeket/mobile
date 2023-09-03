import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/features/common/presentation/widgets/overlapping.panels.dart';
import 'package:mobile/features/core/presentation/manager/core_bloc.dart';
import 'package:mobile/features/core/presentation/manager/messaging_bloc.dart';
import 'package:mobile/generated/protos/messaging.pb.dart';
import 'package:shared_utils/shared_utils.dart';

class DirectMessengerWidget extends StatefulWidget {
  final DirectMessenger directMessenger;

  const DirectMessengerWidget({Key? key, required this.directMessenger})
      : super(key: key);

  @override
  State<DirectMessengerWidget> createState() => _DirectMessengerWidgetState();
}

class _DirectMessengerWidgetState extends State<DirectMessengerWidget> {
  late final _active = !widget.directMessenger.muted &&
          !widget.directMessenger.archived &&
          !widget.directMessenger.blocked,
      _coreBloc = context.read<CoreBloc>();

  // TODO -> get user info from the server

  @override
  Widget build(BuildContext context) => BlocBuilder(
        bloc: _coreBloc,
        builder: (context, state) {
          return AnimatedOpacity(
            duration: kDurationMedium,
            opacity: _active ? kEmphasisHighest : kEmphasisMedium,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: state is SuccessState<CoreBlocState> &&
                        state.data.dm?.id == widget.directMessenger.id
                    ? context.colorScheme.outline
                    : null,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                minLeadingWidth: 32,
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                onTap: () {
                  _coreBloc.add(SetCurrentDMEvent(dm: widget.directMessenger));
                  context
                      .read<MessagingBloc>()
                      .add(GetMessagesEvent(dmId: widget.directMessenger.id));
                  OverlappingPanelsState.of(context)?.reveal(RevealSide.main);
                },
                leading: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GestureDetector(
                        onTap: () => context
                            .showMessengerInfoSheet(widget.directMessenger),
                        child: widget.directMessenger.avatar
                            .avatar(size: 40, circular: true)),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          color: widget.directMessenger.online
                              ? context.colorScheme.tertiary
                              : context.colorScheme.outlineVariant,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: widget.directMessenger.online
                                ? context.colorScheme.background
                                : context.colorScheme.outline,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                title: widget.directMessenger.name.subtitle2(context),
                subtitle: widget.directMessenger.bio.isEmpty
                    ? null
                    : widget.directMessenger.bio.caption(context,
                        emphasis: kEmphasisMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                trailing: widget.directMessenger.muted
                    ? GestureDetector(
                        // TODO -> show `unmute chat` options sheet
                        onTap: context.showFeatureUnderDevSheet,
                        child: Icon(TablerIcons.microphone_off,
                            color: context.theme.disabledColor, size: 20),
                      )
                    : null,
              ),
            ),
          );
        },
      );
}
