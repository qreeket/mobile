import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/core/utils/formatters.dart';
import 'package:mobile/core/utils/helpers.dart';
import 'package:mobile/core/utils/validator.dart';
import 'package:mobile/features/groups/presentation/manager/channel_bloc.dart';
import 'package:mobile/features/core/presentation/manager/core_bloc.dart';
import 'package:mobile/features/core/presentation/widgets/channel.type.label.dart';
import 'package:mobile/generated/assets.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

class CreateChannelPage extends StatefulWidget {
  final Group group;

  const CreateChannelPage({Key? key, required this.group}) : super(key: key);

  @override
  State<CreateChannelPage> createState() => _CreateChannelPageState();
}

class _CreateChannelPageState extends State<CreateChannelPage> {
  final _channelBloc = ChannelBloc(),
      _createChannelBloc = ChannelBloc(),
      _formKey = GlobalKey<FormState>(),
      _channelNameController = TextEditingController(),
      _channelDescriptionController = TextEditingController();
  var _loading = false, _validated = false, _isPublic = true;
  late var _channels = widget.group.channels,
      _privateChannels =
          segregateChannelByType(ChannelType.private, widget.group),
      _publicChannels =
          segregateChannelByType(ChannelType.public, widget.group);

  @override
  void initState() {
    super.initState();
    doAfterDelay(() => _channelBloc.add(GetChannels(widget.group.id)));
  }

  @override
  Widget build(BuildContext context) {
    context.withDefaultOverlays(statusBarBrightness: context.theme.brightness);
    return BlocProvider(
      create: (context) => CoreBloc(),
      child: MultiBlocListener(
        listeners: [
          BlocListener(
            bloc: _channelBloc,
            listener: (context, state) {
              if (!mounted) return;
              setState(() => _loading = state is LoadingState);

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }

              if (state is SuccessState<Stream<List<Channel>>>) {
                state.data.listen((channels) {
                  _channels = channels;
                  _updateUI();
                });
              }
            },
          ),
          BlocListener(
            bloc: _createChannelBloc,
            listener: (context, state) {
              if (!mounted) return;
              setState(() => _loading = state is LoadingState);

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }

              if (state is SuccessState<Channel>) {
                _channelDescriptionController.clear();
                _channelNameController.clear();
                _validated = false;
                _channelBloc.add(GetChannels(widget.group.id));
              }

              if (state is SuccessState<Empty>) {
                _channelBloc.add(GetChannels(widget.group.id));
              }
            },
          ),
        ],
        child: LoadingIndicator(
          loadingAnimIsAsset: true,
          isLoading: _loading,
          lottieAnimResource: Assets.animLoading,
          child: Scaffold(
            bottomNavigationBar: AppRoundedButton(
              text: context.localizer.createChannel,
              enabled: !_loading && _validated,
              layoutSize: LayoutSize.standard,
              onTap: _validateForm,
            ).horizontal(20).top(8).bottom(context.mediaQuery.padding.bottom),
            body: Form(
              key: _formKey,
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    floating: false,
                    systemOverlayStyle: SystemUiOverlayStyle.light,
                    expandedHeight: context.height * 0.2,
                    collapsedHeight: context.height * 0.18,
                    toolbarHeight: 0,
                    flexibleSpace: Container(
                      padding: const EdgeInsets.only(
                          left: 20, bottom: 20, right: 20),
                      decoration: BoxDecoration(
                        color: context.isDarkMode
                            ? context.colorScheme.surfaceVariant
                            : null,
                        gradient: context.isDarkMode
                            ? null
                            : LinearGradient(
                                colors: context.colorScheme.primary
                                    .generateColorShades(),
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          context.localizer
                              .createChannelHeader(widget.group.name)
                              .h5(context,
                                  weight: FontWeight.w600,
                                  color: context.isDarkMode
                                      ? context.colorScheme.onSurface
                                      : context.colorScheme.onPrimary),
                          context.localizer.createChannelSubhead
                              .subtitle2(context,
                                  emphasis: kEmphasisMedium,
                                  color: context.isDarkMode
                                      ? context.colorScheme.onSurface
                                      : context.colorScheme.onPrimary,
                                  weight: FontWeight.w600)
                              .top(8),
                        ],
                      ),
                    ),
                  ),

                  // create new channel section
                  SliverFillRemaining(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                          20, 24, 20, context.mediaQuery.padding.bottom + 12),
                      children: [
                        FilledTextField(
                          context.localizer.name,
                          hint: context.localizer.groupHint,
                          controller: _channelNameController,
                          capitalization: TextCapitalization.words,
                          onChanged: (_) => _validateFormFields(),
                          validator: Validators.validate,
                          enabled: !_loading,
                          maxLength: 25,
                        ),
                        FilledTextField(
                          context.localizer.description,
                          hint: context.localizer.groupHint,
                          controller: _channelDescriptionController,
                          capitalization: TextCapitalization.sentences,
                          onChanged: (_) => _validateFormFields(),
                          validator: Validators.validate,
                          maxLength: 100,
                          enabled: !_loading,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 28,
                          leading: Icon(_isPublic
                              ? TablerIcons.world_download
                              : TablerIcons.lock),
                          title: (_isPublic
                                  ? context.localizer.publicChannel
                                  : context.localizer.privateChannel)
                              .subtitle1(context),
                          subtitle: (_isPublic
                                  ? context.localizer.publicChannelSubhead
                                  : context.localizer.privateChannelSubhead)
                              .subtitle2(context, emphasis: kEmphasisMedium),
                          trailing: CupertinoSwitch(
                            value: _isPublic,
                            activeColor: context.colorScheme.secondary,
                            onChanged: (value) =>
                                setState(() => _isPublic = value),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 28,
                          leading: const Icon(TablerIcons.external_link),
                          title: context.localizer.inviteSubscribers
                              .subtitle1(context),
                          subtitle: context.localizer.inviteSubscribersSubhead
                              .subtitle2(context, emphasis: kEmphasisMedium),
                          onTap: () => context.shareGroupLink(widget.group),
                          trailing: IconButton(
                              onPressed: _copyLinkToClipboard,
                              icon: const Icon(TablerIcons.copy)),
                        ).top(16),

                        // existing channels section
                        if (_publicChannels.isNotEmpty) ...{
                          const ChannelTypeLabel(type: ChannelType.public),
                          ListView.separated(
                            padding: const EdgeInsets.only(top: 16, left: 20),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                _buildChannelTile(_publicChannels[index]),
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 8),
                            itemCount: _publicChannels.length,
                          ),
                        },

                        if (_privateChannels.isNotEmpty) ...{
                          const ChannelTypeLabel(type: ChannelType.private),
                          ListView.separated(
                            padding: const EdgeInsets.only(top: 16, left: 20),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                _buildChannelTile(_privateChannels[index]),
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 8),
                            itemCount: _privateChannels.length,
                          ),
                        },
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _validateFormFields() =>
      setState(() => _validated = _formKey.currentState!.validate());

  void _validateForm() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _createChannelBloc.add(CreateChannel(
        name: _channelNameController.text.trim(),
        description: _channelDescriptionController.text.trim(),
        group: widget.group.id,
        isPublic: _isPublic,
      ));
    }
  }

  /// Copy the group link to the clipboard
  void _copyLinkToClipboard() async {
    await Clipboard.setData(ClipboardData(text: widget.group.link));
    context.showSnackBar(context.localizer.copiedToClipboard);
  }

  Widget _buildChannelTile(Channel channel) {
    final icon = channel.type == ChannelType.private
        ? const Icon(TablerIcons.shield_lock, size: 20)
        : const Icon(TablerIcons.hash, size: 20);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 8),
            formatChannelName(channel.name, false)
                .subtitle2(context, weight: FontWeight.bold),
          ],
        ),
        Visibility(
          visible: !channel.name.contains('general'),
          child: IconButton(
            onPressed: () async {
              context.showMessageDialog(context.localizer.deleteChannelSubhead,
                  title: context.localizer.deleteChannel,
                  actionLabel: context.localizer.delete,
                  animationAsset: Assets.animDeleteData,
                  onTap: () =>
                      _createChannelBloc.add(DeleteChannel(channel.id)));
            },
            icon: HeroIcon(HeroIcons.trash,
                color: context.colorScheme.errorContainer),
          ),
        )
      ],
    );
  }

  void _updateUI() {
    setState(() {
      _publicChannels =
          _channels.where((c) => c.type == ChannelType.public).toList();
      _privateChannels =
          _channels.where((c) => c.type == ChannelType.private).toList();
    });
  }
}
