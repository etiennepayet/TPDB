int size04(int a, int b, int c, int d) {
  while(a > 0) {
    a = a - 1;
    int b_ = b;
    int c_ = c;
    b = 3*b_ + 2*c_;
    c = -5*b_ -3*c_;
    d = a*a + d;
  }
  while(b + c + d > 0) {
    b = b - 1;
    c = c - 1;
    d = d - 1;
  }
  return 0;
}