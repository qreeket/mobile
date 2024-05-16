import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class VoiceCallPage extends StatefulWidget {
  const VoiceCallPage({super.key});

  @override
  State<VoiceCallPage> createState() => _VoiceCallPageState();
}

class _VoiceCallPageState extends State<VoiceCallPage> {
  final _appId = 1046426026,
      _appSign =
          'ba45ba70b29a4d6423bb21f4ae4407c1452a3dc1e1ea735b04e630007de2696d';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ZegoUIKitPrebuiltCall(
          appID: _appId,
          appSign: _appSign,
          callID: 'call_id',
          userID: 'user_id',
          userName: 'Quabynah',
          config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall(),
        ),
      );
}
