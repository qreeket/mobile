import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:mobile/core/app.dart';
import 'package:mobile/core/utils/env.dart';
import 'package:mobile/firebase_options.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'core/di/injector.dart';

void main() async => await Sentry.init(
      (options) {
        options.dsn = Env.kSentryDsn;
        options.tracesSampleRate = 0.1;
      },
      appRunner: () async {
        WidgetsFlutterBinding.ensureInitialized();

        // load environment variables
        await FlutterConfig.loadEnvVariables();

        await Future.wait([
          // firebase configuration
          Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform),
          // initialize dependency injection
          configureDependencies(),
        ]);

        // set orientation to portrait only
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

        runApp(const QreeketApp());
      },
    );
