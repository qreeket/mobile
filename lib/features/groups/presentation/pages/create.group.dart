import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/core/utils/image.utils.dart';
import 'package:mobile/core/utils/validator.dart';
import 'package:mobile/features/groups/presentation/manager/group_bloc.dart';
import 'package:mobile/generated/assets.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:shared_utils/shared_utils.dart';

class CreateGroupPage extends StatefulWidget {
  const CreateGroupPage({Key? key}) : super(key: key);

  @override
  State<CreateGroupPage> createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> {
  final _groupBloc = sl<GroupBloc>(),
      _formKey = GlobalKey<FormState>(),
      _groupNameController = TextEditingController(),
      _groupDescriptionController = TextEditingController();
  var _loading = false, _validated = false;
  File? _selectedAvatarAsset;

  @override
  Widget build(BuildContext context) => BlocListener(
        bloc: _groupBloc,
        listener: (context, state) {
          if (!mounted) return;
          setState(() => _loading = state is LoadingState);

          if (state is ErrorState<String>) {
            context.showMessageDialog(state.failure);
          }

          if (state is SuccessState<Group>) {
            context.showMessageDialog(
              context.localizer.groupCreatedSuccessfullySubhead,
              showAsError: false,
              title: context.localizer.groupCreatedSuccessfully,
              onTap: () => context.navigator.popAndPushNamed(
                  AppRouter.createChannelRoute,
                  arguments: state.data),
            );
          }
        },
        child: Scaffold(
          bottomNavigationBar: AppRoundedButton(
            text: context.localizer.continueText,
            enabled: !_loading && _validated,
            onTap: _validateForm,
          ).horizontal(20).bottom(context.mediaQuery.padding.bottom + 16),
          body: LoadingIndicator(
            loadingAnimIsAsset: true,
            isLoading: _loading,
            lottieAnimResource: Assets.animLoading,
            child: Form(
                key: _formKey,
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      floating: false,
                      systemOverlayStyle: SystemUiOverlayStyle.light,
                      expandedHeight: context.height * 0.18,
                      collapsedHeight: context.height * 0.16,
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
                            context.localizer.createGroupHeader.h5(context,
                                weight: FontWeight.w600,
                                color: context.isDarkMode
                                    ? context.colorScheme.onSurface
                                    : context.colorScheme.onPrimary),
                            context.localizer.createGroupSubhead
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
                    SliverFillRemaining(
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.fromLTRB(
                            20, 0, 20, context.mediaQuery.padding.bottom + 20),
                        children: [
                          // avatar
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              // avatar
                              GestureDetector(
                                onTap: _pickAvatar,
                                child: DottedBorder(
                                  color: context.colorScheme.onBackground
                                      .withOpacity(kEmphasisLow),
                                  borderType: BorderType.Circle,
                                  padding: const EdgeInsets.all(6),
                                  child: Container(
                                    width: context.height * 0.12,
                                    height: context.height * 0.12,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      color: context.colorScheme.surface,
                                      border: Border.all(
                                          color: context.colorScheme.outline
                                              .withOpacity(kEmphasisMedium)),
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: Alignment.center,
                                    child: _selectedAvatarAsset == null
                                        ? HeroIcon(
                                            HeroIcons.userGroup,
                                            color: context.colorScheme.onSurface
                                                .withOpacity(kEmphasisLow),
                                            size: 32,
                                          )
                                        : Image.file(_selectedAvatarAsset!,
                                            width: context.height * 0.12,
                                            height: context.height * 0.12,
                                            fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 4,
                                right: 6,
                                child: GestureDetector(
                                  onTap: _pickAvatar,
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      color: context.colorScheme.primary,
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      TablerIcons.photo_plus,
                                      color: context.colorScheme.onPrimary,
                                      size: 20,
                                    ).bottom(4),
                                  ),
                                ),
                              ),
                            ],
                          ).centered().top(24),

                          // name
                          const SizedBox(height: 40),
                          FilledTextField(
                            context.localizer.name,
                            hint: context.localizer.groupHint,
                            controller: _groupNameController,
                            capitalization: TextCapitalization.words,
                            onChanged: (_) => _validateFormFields(),
                            validator: Validators.validate,
                            enabled: !_loading,
                          ),
                          FilledTextField(
                            context.localizer.description,
                            hint: context.localizer.groupHint,
                            controller: _groupDescriptionController,
                            capitalization: TextCapitalization.sentences,
                            onChanged: (_) => _validateFormFields(),
                            validator: Validators.validate,
                            maxLength: 100,
                            enabled: !_loading,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      );

  void _validateFormFields() =>
      setState(() => _validated = _formKey.currentState!.validate());

  void _validateForm() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _groupBloc.add(CreateGroup(
        name: _groupNameController.text,
        description: _groupDescriptionController.text,
        image: _selectedAvatarAsset,
      ));
    }
  }

  /// Pick an avatar for the group
  void _pickAvatar() async {
    var pickedFile = await pickImageFromGallery();
    if (pickedFile == null) return;
    setState(() => _selectedAvatarAsset = pickedFile);
  }
}
