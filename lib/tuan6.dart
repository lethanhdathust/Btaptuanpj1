import 'dart:io';
import 'dart:math';

List bai1(List a) {
  int c = 0;
  for (int i = 0; i < a.length - 1; i++) {
    for (int j = i + 1; j < a.length; j++) {
      if (a[i] < a[j]) {
        c = a[i];
        a[i] = a[j];
        a[j] = c;
      }
    }
  }
  return a;
}

List bai2(List a) {
  List b = [];
  for (int i = 0; i < a.length; i++) {
    int check = 0;
    for (int j = 2; j <= sqrt(a[i]); j++) {
      if (a[i] % j == 0) {
        check = 1;
      }
    }
    if (check == 0 && a[i] != 1) {
      b.add(a[i]);
    }
  }
  return b;
}

void bai3(List a) {
  int c = 0;
  for (int i = 0; i < a.length - 1; i++) {
    for (int j = i + 1; j < a.length; j++) {
      if (a[i] > a[j]) {
        c = a[i];
        a[i] = a[j];
        a[j] = c;
      }
    }
  }
  print('Gia tri nho nhat' + a[0].toString());
  stdout.write('Chi so min');
  for (int j = 0; j < a.length; j++) {
    if (a[j] == a[0]) {
      stdout.write(j.toString() + ' ');
    }
  }
}

void bai4(List a) {
  int c = 0;
  for (int i = 0; i < a.length - 1; i++) {
    for (int j = i + 1; j < a.length; j++) {
      if (a[i] > a[j]) {
        c = a[i];
        a[i] = a[j];
        a[j] = c;
      }
    }
  }
  print('Gia tri nho nhat' + a[0].toString());
  stdout.write('Chi so min');
  for (int j = 0; j < a.length; j++) {
    if (a[j] == a[a.length - 1]) {
      stdout.write(j.toString() + ' ');
    }
  }
}

List bai5(List a) {
  int snt = 0;
  int hopSo = 0;
  for (int i = 0; i < a.length; i++) {
    int dem = 0;
    for (int j = 2; j <= sqrt(a[i]); j++) {
      if (a[i] % j == 0) {
        dem++;
      }
    }
    if (dem == 1 && a[i] != 0 && a[i] != 1) {
      snt++;
    } else {
      hopSo++;
    }
  }
  return [snt, hopSo];
}

void bai6(List a) {
  Set x = {};
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a.length; j++) {
      if (i == j) {
        continue;
      }
      if (a[i] % a[j] == 0) {
        x.add(a[j]);
        break;
      }
    }
  }
  stdout.write(x);
}
