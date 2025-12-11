import 'package:flutter/material.dart';

class InputValidator {
  static final Map<String, Function> _rules = {
    'required': (value, fieldName, [arg]) =>
        _validateRequired(value, fieldName),
    'min': (value, fieldName, arg) => _validateMinimum(value, fieldName, arg!),
    'max': (value, fieldName, arg) => _validateMaximum(value, fieldName, arg!),
    'regex': (value, fieldName, arg) => _validateRegex(value, fieldName, arg!),
    'numeric': (value, fieldName, [arg]) => _validateNumeric(value, fieldName),
    'nik': (value, fieldName, [arg]) => _validateNikFormat(value, fieldName),
    'phone': (value, fieldName, [arg]) =>
        _validatePhoneFormat(value, fieldName),
    'confirmed': (value, fieldName, arg) =>
        _validateConfirmed(value, fieldName, arg!),
  };
  static String? validateField(
    String? value,
    String fieldName,
    List<String> rules, [
    String? mainPassword,
  ]) {
    String? error;
    final currentValue = value ?? '';
    for (var rule in rules) {
      String ruleName;
      String? ruleArg;
      if (rule.contains(':')) {
        final parts = rule.split(':');
        ruleName = parts[0];
        ruleArg = parts[1];
      } else {
        ruleName = rule;
      }
      if (_rules.containsKey(ruleName)) {
        if (ruleName == 'required') {
          error = _rules[ruleName]!(value, fieldName);
        } else if (ruleName == 'confirmed') {
          if (mainPassword == null) {
            throw Exception('Rule confirmed memerlukan mainPassword');
          }
          error = _validateConfirmed(value, fieldName, mainPassword);
        } else if (currentValue.isNotEmpty) {
          error = _rules[ruleName]!(currentValue, fieldName, ruleArg);
        }
        if (error != null) {
          return error;
        }
      } else {
        debugPrint('Rule validator tidak ditemukan: $ruleName');
      }
    }
    return null;
  }

  static String? _validateRequired(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName tidak boleh kosong.';
    }
    return null;
  }

  static String? _validateNumeric(String value, String fieldName) {
    debugPrint('value : $value');
    if (int.tryParse(value) == null) {
      return '$fieldName harus berupa angka.';
    }
    return null;
  }

  static String? _validateMinimum(String value, String fieldName, String arg) {
    if (value.length < int.parse(arg)) {
      return '$fieldName minimal $arg karakter.';
    }
    return null;
  }

  static String? _validateMaximum(String value, String fieldName, String arg) {
    if (value.length > int.parse(arg)) {
      return '$fieldName maksimal $arg karakter.';
    }
    return null;
  }

  static String? _validateRegex(String value, String fieldName, String arg) {
    final regex = RegExp(arg);
    if (!regex.hasMatch(value)) {
      return '$fieldName format tidak valid.';
    }
    return null;
  }

  static String? _validateNikFormat(String value, String fieldName) {
    final nikRegex = RegExp(r'^\d{16}$');
    if (!nikRegex.hasMatch(value)) {
      return 'NIK harus terdiri dari 16 digit angka.';
    }
    return null;
  }

  static String? _validatePhoneFormat(String value, String fieldName) {
    final cleanValue = value.replaceAll(RegExp(r'[\s\-]'), '');
    final phoneRegex = RegExp(r'^((\+62)|(0))\d{8,15}$');
    if (!phoneRegex.hasMatch(cleanValue)) {
      return 'Format Nomor Telepon tidak valid. Contoh: 0812xxxx atau +62812xxxx';
    }
    return null;
  }

  static String? _validateConfirmed(
    String? value,
    String fieldName,
    String mainPassword,
  ) {
    if (value != mainPassword) {
      return 'Konfirmasi password tidak cocok.';
    }
    return null;
  }
}
