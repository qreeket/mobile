import 'package:encrypt/encrypt.dart';
import 'package:mobile/core/utils/env.dart';
import 'package:shared_utils/shared_utils.dart';

final _key = Key.fromBase64(Env.kEncryptorKey);

/// Encrypts a message using AES encryption algorithm
String encryptMessage(String plainText) {
  final iv = IV.fromBase64(Env.kEncryptorKey);
  logger.i('iv: ${iv.base64}');
  final encryptor = Encrypter(AES(_key));
  final encrypted = encryptor.encrypt(plainText, iv: iv);
  return encrypted.base64;
}

/// Decrypts a message using AES encryption algorithm
String decryptMessage(String message) {
  final iv = IV.fromBase64(Env.kEncryptorKey);
  final encryptor = Encrypter(AES(_key));
  final decrypted = encryptor.decrypt(Encrypted.fromBase64(message), iv: iv);
  return decrypted;
}
