extension IterableExtensions on Iterable<String> {
  Map<String, int> countWords() {
    var map = <String, int>{};
    forEach((element) {
      map.update(element, (value) => ++value, ifAbsent: () => 1);
    });
    return map;
  }
}