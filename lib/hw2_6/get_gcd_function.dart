int getGCD(List<int> l1Factors, List<int> l2Factors) {
  var _l2Factors = List<int>.from(l2Factors);
  var _sameFactors = <int>[];
  for (var l1Element in l1Factors) {
    if (_l2Factors.isEmpty) break;
    if (_l2Factors.contains(l1Element)) {
      _sameFactors.add(l1Element);
      _l2Factors.remove(l1Element);
    }
  }
  return _sameFactors.reduce((value, element) => value * element);
}