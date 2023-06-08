import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/utils/actions.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/generated/assets.dart';
import 'package:shared_utils/shared_utils.dart';

class UnsupportedDevicePage extends StatefulWidget {
  const UnsupportedDevicePage({Key? key}) : super(key: key);

  @override
  State<UnsupportedDevicePage> createState() => _UnsupportedDevicePageState();
}

class _UnsupportedDevicePageState extends State<UnsupportedDevicePage> {
  @override
  Widget build(BuildContext context) {
    kUseDefaultOverlays(context, statusBarBrightness: context.theme.brightness);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(Assets.animUnsupportedDevice,
              repeat: false, height: context.height * 0.35),
          context.localizer.unsupportedDevice
              .h6(context, weight: FontWeight.w600, alignment: TextAlign.center)
              .top(16),
          context.localizer.unsupportedDeviceSubhead
              .subtitle2(context,
                  alignment: TextAlign.center, emphasis: kEmphasisMedium)
              .top(4),
          AppRoundedButton(
            text: context.localizer.seekHelp,
            icon: TablerIcons.brand_whatsapp,
            onTap: openWhatsappChat,
          ).top(context.height * 0.1),
        ],
      ).horizontal(20).centered(),
    );
  }
}
