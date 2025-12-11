String? getServerError(String fieldName, Map<String, List<String>> errors) {
  if (errors.containsKey(fieldName) && errors[fieldName]!.isNotEmpty) {
    return errors[fieldName]!.join('\n');
  }
  return null;
}
