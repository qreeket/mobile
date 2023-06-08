import 'package:shared_utils/shared_utils.dart' show TextX;

class Validators {
  /// simple input validator
  static String? validate(String? input) {
    if (input.isNullOrEmpty()) return 'required';
    return null;
  }

  static String? validateAuthCode(String? input) {
    input = input?.replaceAll(' ', '');
    if (input.isNullOrEmpty()) return 'Required';
    var regex = RegExp(r'^\d{6}$');
    return regex.hasMatch(input!.trim()) ? null : 'Invalid verification code';
  }

  static String? validatePhone(String? input) {
    input = input?.replaceAll(' ', '');
    if (input.isNullOrEmpty()) return 'Required';
    var regex =
        RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$');
    return regex.hasMatch(input!.trim()) ? null : 'Invalid phone number';
  }

  static String? validateEmail(String? input) {
    if (input.isNullOrEmpty()) return 'Required';
    var regex = RegExp(r'(^[a-z0-9_.+-]+@[a-z0-9-]+\.[a-z0-9-.]+$)');
    return regex.hasMatch(input!.trim()) ? null : 'Bad email address format';
  }

  static String? validatePassword(String? input, [String? confirmPassword]) {
    if (input.isNullOrEmpty()) return 'Required';

    /// min length of 6
    var regex = RegExp(r'[A-Za-z0-9@#$%^&_+=]{6,}');
    var validated = regex.hasMatch(input!.trim());
    if (!validated) return 'Password is too short';
    if (confirmPassword != null && input != confirmPassword) {
      return 'Passwords do not match';
    }
    return null;
  }
}
