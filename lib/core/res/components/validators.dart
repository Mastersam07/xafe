import '../regex.dart';

class XafeFieldValidator {
  static String defaultValidator(String value, {String errorMsg}) {
    if (value.isEmpty) {
      return 'Field is required';
    } else {
      return null;
    }
  }

  static String nameValidator(String value, {String errorMsg}) {
    if (value.isEmpty) {
      return 'Name is required';
    } else if (!XafeRegex.nameRegExp.hasMatch(value)) {
      return errorMsg ?? 'Please enter only alphabetical characters.';
    } else {
      return null;
    }
  }

  static String emailValidator(String value) {
    if (value.isEmpty) {
      return 'Email field is required';
    } else if (!XafeRegex.emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    } else {
      return null;
    }
  }

  static String phoneNumberValidator(String value) {
    if (value.isEmpty) {
      return 'Phone number is required';
    } else if (value.length < 11) {
      return "Phone number can't be less than 11";
    } else if (!XafeRegex.phoneRegExp.hasMatch(value)) {
      return 'Enter a NG phone number';
    } else {
      return null;
    }
  }

  static String passwordComplexityValidator(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return '';
    } else if (XafeRegex.passwordComplexityRegex.hasMatch(value)) {
      return null;
    } else {
      return '';
    }
  }

  static String passwordValidator(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return "Password can't be lesss than 8";
    } else {
      return null;
    }
  }
}
