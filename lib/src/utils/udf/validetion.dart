bool emailValidation({required String email}) {
  RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  return emailRegExp.hasMatch(email);
}

bool passwordValidation({required String password}) {
  RegExp passwordRegExp =
      RegExp(r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  return passwordRegExp.hasMatch(password);
}

bool isValidExpirationDate(String value) {
  // Check if the expiration date is in MM/YY format and is a future date.
  if (value.length != 5) {
    return false;
  }

  final now = DateTime.now();
  final month = int.tryParse(value.substring(0, 2));
  final year = int.tryParse(value.substring(3));

  if (month == null || year == null) {
    return false;
  }

  if (month < 1 || month > 12) {
    return false;
  }

  final cardExpirationDate = DateTime(2000 + year, month);

  return cardExpirationDate.isAfter(now);
}
