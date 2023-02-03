import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tuan5Screen extends StatelessWidget {
  const Tuan5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 100,
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
                        var y = '';
                        int n = 10;
                        var tong = 0.0;
                        for (int i = 1; i <= n; i++) {
                          var mau = 0;
                          for (int j = 1; j <= i; j++) {
                            mau += j;
                          }
                          x = mau.toString();

                          tong += 1 / mau;
                        }
                        y = tong.toString();
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
                                    Text('mau  ' + x),
                                    Text('tong  ' + y),
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
                        child: const Text("Tuan 5 bai 1"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        var x = '';
                        var y = '';
                        int n = 10;
                        var tong = 0.0;
                        for (int i = 1; i <= n; i++) {
                          var mau = 1;

                          for (int j = 1; j <= i; j++) {
                            mau *= j;
                          }
                          x = mau.toString();

                          tong += 1 / mau;
                        }
                        y = tong.toString();
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
                                    Text('mau  ' + x),
                                    Text('tong  ' + y),
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
                        child: const Text('Tuan 5 Bai 2'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        int n = 10;
                        var tong = 0.0;
                        var mau = 0;
                        var x = '';
                        var y = '';
                        for (int i = 1; i <= n; i++) {
                          var t = 1;
                          for (int j = 1; j <= i; j++) {
                            t *= j;
                          }
                          mau += t;
                          x = mau.toString();
                          tong += 1 / mau;
                        }
                        y = tong.toString();
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
                                    Text('tong ' + x),
                                    Text('mau ' + y),
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
                        child: const Text('Tuan 5 bai 3'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        int bai4(int n) {
                          if (n == 1) return 1;
                          if (n == 2) return 2;
                          return bai4(n - 1) + bai4(n - 2);
                        }

                        // Bai 4
                        var x = bai4(10);
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
                        child: const Text('Tuan 5 bai 4'),
                      ),
                    ),
                  ],
                ),
              );
  }
}