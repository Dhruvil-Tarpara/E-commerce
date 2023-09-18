extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension DubouleExtension on String {
  double todouble() {
    return double.tryParse(this) ?? 0.0;
  }
}

String idGenerator() {
  final now = DateTime.now();
  return now.microsecondsSinceEpoch.toString();
}

extension AddSpaceEvery4Characters on String {
  String addSpaceEvery4Characters() {
    final RegExp regex = RegExp(r'.{4}');
    return replaceAllMapped(regex, (match) => '${match.group(0)} ');
  }
}

extension ExpiryDateValidation on String {
  String? isValidExpiryDate() {
    if (isEmpty) {
      return 'Please enter an expiration date';
    }
    if (length != 4) {
      return 'Invalid input length, please enter 4 digits';
    }
    final int month = int.tryParse(substring(0, 2)) ?? 0;
    final int year = int.tryParse(substring(2, 4)) ?? 0;
    final DateTime now = DateTime.now();

    if (month < 1 || month > 12) {
      return 'Invalid month';
    }

    final DateTime cardDate =
        DateTime(2000 + year, month + 1, 1).subtract(const Duration(days: 1));

    if (cardDate.isBefore(now)) {
      return 'Card has expired';
    }
    return null;
  }
}
