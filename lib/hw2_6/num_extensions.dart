extension NumExtensions on num {
  double ofRoot(int degree, {double eps = 0.00000000001}) {
    num number = this;
    int rootDegree = degree;
    double root = number / rootDegree;
    double rn = number.toDouble();
    while((root - rn).abs() >= eps){
      rn = number.toDouble();
      for(int i = 1; i < rootDegree; i++){
        rn = rn / root;
      }
      root = 0.5 * ( rn + root);
    }
    return root;
  }
}