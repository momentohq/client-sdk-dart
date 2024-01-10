const displaySizeLimit = 5;

String truncateString(String value, {int maxLength = 32}) {
  if (value.length > maxLength) {
    return '${value.substring(0, maxLength)}...';
  } else {
    return value;
  }
}

List<String> truncateStringArrayToSize(List<String> stringArray,
    {int length = displaySizeLimit}) {
  if (stringArray.length <= length) {
    return stringArray;
  } else {
    return stringArray.sublist(0, length).followedBy(['...']).toList();
  }
}

List<String> truncateStringArray(List<String> stringArray,
    {int length = displaySizeLimit}) {
  final truncatedStringArray =
      truncateStringArrayToSize(stringArray, length: length);
  return truncatedStringArray.map((s) {
    return truncateString(s);
  }).toList();
}
