import 'dart:io';

void main() {
  print('rtwt');
}

void bai1() {
  int n = 10;
  var tong = 0.0;
  for (int i = 1; i <= n; i++) {
    var mau = 0;
    for (int j = 1; j <= i; j++) {
      mau += j;
    }
    stdout.write((mau.toString() + ' '));
    tong += 1 / mau;
  }
  stdout.write(tong);
}

void bai2() {
  int n = 10;
  var tong = 0.0;
  for (int i = 1; i <= n; i++) {
    var mau = 1;
    for (int j = 1; j <= i; j++) {
      mau *= j;
    }
    stdout.write((mau.toString() + ' '));
    tong += 1 / mau;
  }
  stdout.write(tong);
}

void bai3() {
  int n = 10;
  var tong = 0.0;
  var mau = 0;
  for (int i = 1; i <= n; i++) {
    var t = 1;
    for (int j = 1; j <= i; j++) {
      t *= j;
    }
    mau += t;
    stdout.write((mau.toString() + ' '));
    tong += 1 / mau;
  }
  stdout.write(tong);
}

int bai4(int n) {
  if (n == 1) return 1;
  if (n == 2) return 2;
  return bai4(n - 1) + bai4(n - 2);
}
