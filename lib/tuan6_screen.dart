import 'dart:math';

import 'package:flutter/material.dart';

class Tuan6Screen extends StatelessWidget {
  const Tuan6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController t6B1 = TextEditingController();
    TextEditingController t6B2 = TextEditingController();
    TextEditingController t6B3 = TextEditingController();
    TextEditingController t6B4 = TextEditingController();
    TextEditingController t6B5 = TextEditingController();
    TextEditingController t6B6 = TextEditingController();
    return SizedBox(
      height: 400,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        childAspectRatio: 40 / 30,
        children: <Widget>[
          Column(
            children: [
              InkWell(
                onTap: () {
                  List<int> a = t6B1.text.split(',').map(int.parse).toList();

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

                  var x = a.toString();
                  Scaffold.of(context).showBottomSheet<void>(
                    (BuildContext context) {
                      return Container(
                        height: 300,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Phần kết quả'),
                              Text(a.toString()),
                              ElevatedButton(
                                child: const Text('back'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Column(
                    children: [
                      Text("Tuan 6 bai 1"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  controller: t6B1,
                  decoration: InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  List a = t6B2.text.split(',').map(int.parse).toList();
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
                  Scaffold.of(context).showBottomSheet<void>(
                    (BuildContext context) {
                      return Container(
                        height: 300,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Phần kết quả'),
                              Text(b.toString()),
                              ElevatedButton(
                                child: const Text('back'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Tuan 6 Bai 2'),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Mời nhập dãy số ',
                  ),
                  controller: t6B2,
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  List a = t6B3.text.split(',').map(int.parse).toList();
                  List b = t6B3.text.split(',').map(int.parse).toList();
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
                  List chiSoMin = [];
                  for (int j = 0; j < b.length; j++) {
                    if (b[j] == a[0]) {
                      // stdout.write(j.toString() + ' ');
                      chiSoMin.add(j);
                    }
                  }
                  print(chiSoMin);
                  // print('Gia tri nho nhat' + a[0].toString());
                  // stdout.write('Chi so min');
                  Scaffold.of(context).showBottomSheet<void>(
                    (BuildContext context) {
                      return Container(
                        height: 300,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Phần kết quả'),
                              Text('Gia tri nho nhat: ' + a[0].toString()),
                              Text('Chi số Min : ' + chiSoMin.toString()),
                              ElevatedButton(
                                child: const Text('back'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Tuan 6 bai 3'),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Mời nhập dãy số ',
                  ),
                  controller: t6B3,
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  List a = t6B4.text.split(',').map(int.parse).toList();
                  List b = t6B4.text.split(',').map(int.parse).toList();
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
                  List chiSoMax = [];
                  for (int j = 0; j < b.length; j++) {
                    if (b[j] == a[a.length - 1]) {
                      // stdout.write(j.toString() + ' ');
                      chiSoMax.add(j);
                    }
                  }
                  for (int j = 0; j < a.length; j++) {
                    if (a[j] == a[a.length - 1]) {}
                  }
                  Scaffold.of(context).showBottomSheet<void>(
                    (BuildContext context) {
                      return Container(
                        height: 300,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Phần kết quả'),
                              Text('Gia tri lon nhat :  ' +
                                  a[a.length - 1].toString()),
                              Text('Chi số Min : ' + chiSoMax.toString()),
                              ElevatedButton(
                                child: const Text('back'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Tuan 6 bai 4'),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Mời nhập dãy số ',
                  ),
                  controller: t6B4,
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  List a = t6B5.text.split(',').map(int.parse).toList();
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
                  // return [snt, hopSo];
                  Scaffold.of(context).showBottomSheet<void>(
                    (BuildContext context) {
                      return Container(
                        height: 300,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Phần kết quả'),
                              Text('Số lượng số nguyên tố ; ' + snt.toString()),
                              Text('Số lượng hợp số: ' + hopSo.toString()),
                              ElevatedButton(
                                child: const Text('back'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Tuan 6 bai 5'),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Mời nhập dãy số ',
                  ),
                  controller: t6B5,
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  List a = t6B6.text.split(',').map(int.parse).toList();
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
                  Scaffold.of(context).showBottomSheet<void>(
                    (BuildContext context) {
                      return Container(
                        height: 300,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Phần kết quả'),
                              Text(x.toString()),
                              ElevatedButton(
                                child: const Text('back'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Tuan 6 bai 6'),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Mời nhập dãy số ',
                  ),
                  controller: t6B6,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
