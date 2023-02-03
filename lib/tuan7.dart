import 'dart:io';

void bai1() {
  var s1 = '';
  String a = '   Le Thanh Dat';
  a = a.trim();
  for (int i = 0; i < a.length; i++) {
    if (i == 0) {
      s1 = s1 + a[i];
    } else if (a[i] != ' ') {
      s1 = s1 + a[i];
    }
  }
  String s2 = s1[0] + '';
  for (int i = 1; i < s1.length; i++) {
    if (s1[i].toUpperCase() == s1[i]) {
      s2 = s2 + '${s1[i]}';
    } else {
      s2 = s2 + s1[i];
    }
  }
  stdout.write(s2);
}

void bai2() {
  var dem = 0;
  String a = 'acs 1 sd ab asffa';
  for (int i = 0; i < a.length - 2; i++) {
    if (a[i] == 'a' && a[i + 1] == 'b' && a[i + 2] == 'c') {
      dem = dem + 1;
    }
  }
  stdout.write(dem);
}

void bai3() {
  var s = '';
  String a = '   Le Thanh Dat';
  a = a.trim();
  for (int i = a.length - 1; i >= 0; i--) {
    if (a[i].toUpperCase() == a[i]) {
      for (i; i < a.length; i++) {
        s = s + a[i];
      }
      break;
    }
  }
  stdout.write(s);
}

void bai4() {
  var s = '';
  String a = '   Le Thanh Dat';
  a = a.trim();
  for (int i = 0; i < a.length; i++) {
    if (a[i + 1] == '') {
      for (int j = 0; j <= i; j++) {
        s = s + a[j];
      }
      break;
    }
  }
  stdout.write(s);
}

void bai5() {
  List<String> a = [];
  String x = '01010101010111001';
  for (int i = 0; i < x.length; i++) {
    a..add(x[i]);
  }
  stdout.write(a);
  for (int i = 0; i < a.length - 1; i++) {
    if (a[i] == '0' && a[i + 1] == '1') {
      var x = a[i];
      a[i] = a[i + 1];
      a[i + 1] = x;
    }
    i++;
  }
  stdout.write(a);
}

void bai6() {
  var s = '';
  String a = '   Le Thanh Dat';
  a = a.trim();
  for (int i = a.length - 1; i >= 0; i--) {
    s = s + a[i];
  }
  stdout.write(s);
}

void bai7() {
  String takeName(String x) {
    String s = '';
    for (int i = x.length - 1; i >= 0; i--) {
      if (x[i] == ' ') {
        break;
      }
      s = s + x[i];
    }
    return s.split('').reversed.join();
  }

  List<String> a = [
    'le thanh dat',
    'cao van An',
    'le daf an',
  ];
  List<String> name = [];
  for (int i = 0; i < a.length; i++) {
    name.add(takeName(a[i]));
  }
  print(name);
  int count = 0;
  for (int i = 0; i < name.length; i++) {
    if (name[i] == 'An') {
      count++;
    }
  }
  stdout.write(count);
}

void bai8() {
  String takeMiddleName(String x) {
    List<String> name = [];
    name = x.split(' ');
    return name[1];
  }

  List<String> a = [
    'le thanh dat',
    'cao van An',
    'le daf an',
  ];
  List<String> name = [];
  for (int i = 0; i < a.length; i++) {
    name.add(takeMiddleName(a[i]));
  }
  print(name);
  int count = 0;
  for (int i = 0; i < name.length; i++) {
    if (name[i] == 'Thị') {
      count++;
    }
  }
  stdout.write(count);
}
void bai9() {
  String takeMiddleName(String x) {
    List<String> name = [];
    name = x.split(' ');
    return name[name.length-1];
  }

  List<String> a = [
    'le thanh dat',
    'cao van An',
    'le daf an',
  ];
  List<String> name = [];
  for (int i = 0; i < a.length; i++) {
    name.add(takeMiddleName(a[i]));
  }
  print(name[1]);
  int count = 0;
  for (int i = 0; i < name.length; i++) {
    if (name[i][0] == 'H') {
      count++;
    }
  }
  stdout.write(count);
}
