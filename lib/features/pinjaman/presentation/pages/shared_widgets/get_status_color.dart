import 'package:flutter/material.dart';

Color getStatusColor(String status) {
  switch (status) {
    case 'approved':
      return Colors.green.shade700;
    case 'rejected':
      return Colors.red.shade700;
    default:
      return Colors.orange.shade700;
  }
}
