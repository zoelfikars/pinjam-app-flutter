import 'package:intl/intl.dart';

String formatIsoToIdDateTime(
  String isoString, {
  bool toLocal = true,
  bool simple = false,
  bool includeSeconds = false,
  bool useDotSeparator = true,
  bool showTimezoneAbbr = true,
  bool includeTime = true,
  String locale = 'id_ID',
}) {
  if (isoString == 'N/A') return 'N/A';
  final parsed = DateTime.parse(isoString);
  return formatDateTimeId(
    simple: simple,
    toLocal ? parsed.toLocal() : parsed,
    includeSeconds: includeSeconds,
    useDotSeparator: useDotSeparator,
    showTimezoneAbbr: showTimezoneAbbr,
    includeTime: includeTime,
    locale: locale,
  );
}

String formatDateTimeId(
  DateTime dateTime, {
  bool simple = false,
  bool includeSeconds = false,
  bool useDotSeparator = true,
  bool showTimezoneAbbr = true,
  bool includeTime = true,
  String locale = 'id_ID',
}) {
  final sep = useDotSeparator ? '.' : ':';
  final timePattern = includeSeconds ? 'HH${sep}mm${sep}ss' : 'HH${sep}mm';
  final pattern = simple
      ? "d-MM-y $timePattern"
      : "EEEE, d MMMM y${includeTime ? ' $timePattern' : ''}";
  final datePart = DateFormat(pattern, locale).format(dateTime);
  final tz = showTimezoneAbbr ? _idnTzAbbr(dateTime.timeZoneOffset) : '';
  return tz.isEmpty ? datePart : '$datePart $tz';
}

String _idnTzAbbr(Duration offset) {
  final hours = offset.inHours;
  final minutes = offset.inMinutes.abs() % 60;
  if (minutes == 0) {
    if (hours == 7) return 'WIB';
    if (hours == 8) return 'WITA';
    if (hours == 9) return 'WIT';
  }
  final sign = offset.isNegative ? '-' : '+';
  final hh = hours.abs().toString().padLeft(2, '0');
  final mm = minutes.toString().padLeft(2, '0');
  return 'GMT$sign$hh:$mm';
}
