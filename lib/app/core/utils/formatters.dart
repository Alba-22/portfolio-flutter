enum FormatDateType {
  completeYear,
  withoutYear,
  shortYear,
}

String formatDate(DateTime date, {FormatDateType type = FormatDateType.completeYear}) {
  final String day = date.day < 10 ? "0${date.day}" : "${date.day}";
  final String month = date.month < 10 ? "0${date.month}" : "${date.month}";
  if (type == FormatDateType.withoutYear) {
    return "$day/$month";
  }
  if (type == FormatDateType.shortYear) {
    return "$day/$month/${date.year.toString().substring(2)}";
  }

  return "$day/$month/${date.year}";
}
