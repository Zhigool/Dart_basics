int getLCM(List<int> l1Factors, List<int> l2Factors) {
  var _l1Factors = List<int>.from(l1Factors);
  var _allFactors = List<int>.from(l1Factors);
  for (var l2Element in l2Factors) {
    if (!_l1Factors.contains(l2Element)) {
      _l1Factors.remove(l2Element);
      _allFactors.add(l2Element);
    } else {
      _l1Factors.remove(l2Element);
    }
  }
  return _allFactors.reduce((value, element) => value * element);
}