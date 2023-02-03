import 'dart:io';
import 'dart:math';

void main() {
  Tuan4.bai1();
}

class Tuan4 {
  static void bai1() {
    for (var j = 2; j < 100; j++) {
      for (var i = 2; i < j; i++) {
        if (j % i == 0) {
          stdout.write(j.toString() + " ");
        }
      }
    }
  }

  void bai2() {
    int count = 0;
    int number = 1;
    for (int num = 2; num < 100; num++) {
      int count = 0;
      for (int i = 2; i <= sqrt(num); i++) {
        if (num % i == 0) {
          count++;
        }
      }
      if (count == 0 && number <= 20) {
        number++;
        stdout.write(num);
      }
    }
  }

  void bai3() {
    for (int num = 1000; num <= 2000; num++) {
      int count = 0;
      for (int i = 2; i <= sqrt(num); i++) {
        if (num % i == 0) {
          count++;
        }
      }
      if (count == 0) {
        stdout.write(num);
      }
    }
  }

  void bai4() {
    for (int i = 1; i < 100; i++) {
      if (i % 3 == 0 && i % 7 == 0) {
        stdout.write(i);
      }
    }
  }

  void bai5() {
    for (int i = 1000; i <= 2000; i++) {
      if (i % 3 == 0 && i % 7 == 0 && i % 5 == 0) {
        stdout.write(i);
      }
    }
  }

  void bai6() {
    bool checkPerfecNumber(int num) {
      var a = [];
      for (int i = 1; i < num; i++) {
        if (num % i == 0) {
          a.add(i);
        }
      }
      var tong = 0;
      for (var x in a) {
        tong = tong + x as int;
      }
      return num == tong;
    }

    int print = 0;
    int i = 1;
    while (i >= 1 && print <= 5) {
      var k = checkPerfecNumber(i);
      if (k == true) {
        stdout.write(i.toString() + ' ');
        print++;
      }
      i++;
    }
  }

  void bai7() {
    for (int i = 1; i < 100; i++) {
      if (i % 5 == 0) {
        stdout.write(i.toString() + ' ');
      }
    }
    for (int i = 1; i < 100; i++) {
      if (i % 5 == 1) {
        stdout.write(i.toString() + ' ');
      }
    }
    for (int i = 1; i < 100; i++) {
      if (i % 5 == 2) {
        stdout.write(i.toString() + ' ');
      }
    }
    for (int i = 1; i < 100; i++) {
      if (i % 5 == 3) {
        stdout.write(i.toString() + ' ');
      }
    }
  }
}
