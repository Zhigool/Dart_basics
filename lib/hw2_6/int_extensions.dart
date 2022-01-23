extension IntExtensions on int {
  List<int> getSimpleFactors() {
    if (this < 0) {
      throw Exception("Value must be >= 0");
    }
    if (this == 0 || this == 1) {
      return [this];
    }
    var multiplierCandidate = 2;
    var multipliers = <int>[];
    var dividerResult = this;
    while (dividerResult != 1) {
      var multiplier = 0;
      while (multiplierCandidate <= this) {
        if (dividerResult % multiplierCandidate == 0) {
          multiplier = multiplierCandidate;
          multipliers.add(multiplier);
          break;
        }
        multiplierCandidate++;
      }
      dividerResult = dividerResult~/multiplier;
      multiplierCandidate = 2;
    }
    return multipliers;
  }

  String toBinary() {
    int bin = 0, i = 1;
    var res = this;
    while (res > 0) {
      bin = bin + (res % 2) * i;
      res = (res / 2).floor();
      i = i * 10;
    }
    return bin.toString();
  }
}