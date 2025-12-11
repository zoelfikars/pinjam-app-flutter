import 'package:intl/intl.dart';

class AppConstant {
  static const List<int> successStatusCodes = [200, 201];
  static NumberFormat numberFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );
}
