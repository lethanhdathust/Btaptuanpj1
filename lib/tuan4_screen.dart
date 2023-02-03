import 'dart:math';

import 'package:flutter/material.dart';

class Tuan4Screen extends StatelessWidget {
  const Tuan4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        childAspectRatio: 30 / 10,
        children: <Widget>[
          InkWell(
            onTap: () {
              var x = '';
              for (var j = 2; j < 100; j++) {
                for (var i = 2; i < j; i++) {
                  if (j % i == 0) {
                    x = x + j.toString() + ' ';
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
                          Text(x),
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
              child: const Text("Tuan 4 bai 1"),
            ),
          ),
          InkWell(
            onTap: () {
              var x = '';
              int number = 1;
              for (int num = 2; num < 10000; num++) {
                int count = 0;
                for (int i = 2; i <= sqrt(num); i++) {
                  if (num % i == 0) {
                    count++;
                  }
                }
                if (count == 0 && number <= 20) {
                  number++;
                  x = x + num.toString() + ' ';
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
                          Text(x),
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
              child: const Text('Tuan 4 Bai 2'),
            ),
          ),
          InkWell(
            onTap: () {
              var x = '';
              for (int num = 1000; num <= 2000; num++) {
                int count = 0;
                for (int i = 2; i <= sqrt(num); i++) {
                  if (num % i == 0) {
                    count++;
                  }
                }
                if (count == 0) {
                  print(num);
                  x = x + num.toString() + ' ';
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
                          Text(x),
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
              child: const Text('Tuan 4 bai 3'),
            ),
          ),
          InkWell(
            onTap: () {
              var x = '';
              for (int i = 1; i < 100; i++) {
                if (i % 3 == 0 && i % 7 == 0) {
                  print(i);
                  x = x + i.toString() + ' ';
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
                          Text(x),
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
              color: Colors.teal[400],
              child: const Text('Tuần 4 bài 4'),
            ),
          ),
          InkWell(
            onTap: () {
              var x = '';
              for (int i = 1000; i <= 2000; i++) {
                if (i % 3 == 0 && i % 7 == 0 && i % 5 == 0) {
                  // stdout.write(i);
                  x = x + i.toString() + ' ';
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
                          Text(x),
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
              color: Colors.teal[500],
              child: const Text('Tuần 4 bài 5'),
            ),
          ),
          InkWell(
            onTap: () {
              var x = '';
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

              int printa = 0;
              int i = 1;
              while (i >= 1 && printa <= 5) {
                var k = checkPerfecNumber(i);
                if (k == true) {
                  printa++;
                  x = x + i.toString() + ' ';
                }
                i++;
              }
              print(x);

              // Scaffold.of(context).showBottomSheet<void>(
              //   (BuildContext context) {
              //     return Container(
              //       height: 300,
              //       color: Colors.amber,
              //       child: Center(
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           mainAxisSize: MainAxisSize.min,
              //           children: <Widget>[
              //             const Text('Phần kết quả'),
              //             Text(x),
              //             ElevatedButton(
              //               child: const Text('back'),
              //               onPressed: () {
              //                 Navigator.pop(context);
              //               },
              //             ),
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              // );
            },
            child: Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Tuần 4 bài 6'),
            ),
          ),
          InkWell(
            onTap: () {
              var a = '';
              for (int i = 1; i < 100; i++) {
                if (i % 5 == 0) {
                  a = a + i.toString() + ' ';
                }
              }
              var b = '';

              for (int i = 1; i < 100; i++) {
                if (i % 5 == 1) {
                  b = b + i.toString() + ' ';
                }
              }
              var c = '';
              for (int i = 1; i < 100; i++) {
                if (i % 5 == 2) {
                  c = c + i.toString() + ' ';
                }
              }
              var d = '';
              for (int i = 1; i < 100; i++) {
                if (i % 5 == 3) {
                  d = d + i.toString() + ' ';
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
                          Text(a),
                          Text(b),
                          Text(c),
                          Text(d),
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
              color: Colors.teal[500],
              child: const Text('Tuần 4 bài 7'),
            ),
          ),
        ],
      ),
    );
  }
}
