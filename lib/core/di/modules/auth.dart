import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AuthModule {
  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.i;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
}
