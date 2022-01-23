extension StringExtensions on String {
  List<num> getNums() {
    return split(" ")
        .map((e) => e.trim())
        .map((e) => num.tryParse(e))
        .whereType<num>()
        .toList();
  }
}