class InputValidator{
  String? validateEmail(value) {
    if (value!.isEmpty) {
      return 'Please enter an email';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePhoneNumber(value) {
    if (value!.isEmpty) {
      return 'Please enter an phone number';
    }
    if (value.length != 11) {
      return 'please enter a 11-digit phone number';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value!.isEmpty) {
      return 'Please enter a password';
    }

    return null;
  }

  String? validateUserName(value) {
    if (value!.isEmpty) {
      return 'Please enter a username';
    }
    return null;
  }
}