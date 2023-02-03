import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tuan7Screen extends StatelessWidget {
  const Tuan7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController t7B1 = TextEditingController();
    TextEditingController t7B2 = TextEditingController();

    TextEditingController t7B3 = TextEditingController();

    TextEditingController t7B4 = TextEditingController();
    TextEditingController t7B5 = TextEditingController();
    TextEditingController t7B6 = TextEditingController();
    TextEditingController t7B7 = TextEditingController();
    TextEditingController t7B8 = TextEditingController();
    TextEditingController t7B9 = TextEditingController();

    return SizedBox(
      height: 500,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        childAspectRatio: 20 / 20,
        children: <Widget>[
          Column(
            children: [
              InkWell(
                onTap: () {
                  var s1 = '';
                  String a = t7B1.text;
                  a = a.trim();
                  for (int i = 0; i < a.length; i++) {
                    if (a[i] == ' ' && a[i + 1] == ' ') {
                      continue;
                    }
                    s1 = s1 + a[i];
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
                              Text(s1.toString()),
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
                  child: const Text("Tuan 7 bai 1"),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  controller: t7B1,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  var dem = 0;
                  String a = t7B2.text;
                  for (int i = 0; i < a.length - 2; i++) {
                    if (a[i] == 'a' && a[i + 1] == 'b' && a[i + 2] == 'c') {
                      dem = dem + 1;
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
                              Text(dem.toString()),
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
                  child: const Text("Tuan 7 bai 2"),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  controller: t7B2,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  var s = '';
                  String a = t7B3.text;
                  a = a.trim();
                  for (int i = a.length - 1; i >= 0; i--) {
                    if (a[i] == ' ') {
                      for (i = i + 1; i < a.length; i++) {
                        s = s + a[i];
                      }
                      break;
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
                              Text(s.toString()),
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
                  child: const Text("Tuan 7 bai 3"),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  controller: t7B3,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  var s = '';
                  String a = t7B4.text;
                  a = a.trim();
                  for (int i = 0; i < a.length; i++) {
                    if (a[i + 1] == ' ') {
                      for (int j = 0; j <= i; j++) {
                        s = s + a[j];
                      }
                      break;
                    }
                  }
                  // stdout.write(s);
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
                              Text(s.toString()),
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
                  child: const Text("Tuan 7 bai 4"),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  controller: t7B4,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  String x = t7B5.text;
                  List<String> a = x.split('');
                  for (int i = 0; i < a.length - 1; i++) {
                    if (a[i] == '0' && a[i + 1] == '1') {
                      var x = a[i];
                      a[i] = a[i + 1];
                      a[i + 1] = x;
                    }
                    i++;
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
                  child: const Text("Tuan 7 bai 5"),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  controller: t7B5,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  var s = '';
                  String a = t7B6.text;
                  a = a.trim();
                  for (int i = a.length - 1; i >= 0; i--) {
                    s = s + a[i];
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
                              Text(s.toString()),
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
                  child: const Text("Tuan 7 bai 6"),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  controller: t7B6,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  String takeName(String x) {
                    String s = '';
                    for (int i = x.length - 1; i >= 0; i--) {
                      if (x[i] == ' ') {
                        for (i = i + 1; i < x.length; i++) {
                          s = s + x[i];
                        }
                        break;
                      }
                    }
                    return s.split('').join();
                  }

                  List<String> a = t7B7.text.split(',');
                  List<String> name = [];
                  for (int i = 0; i < a.length; i++) {
                    print(takeName(a[i]));
                    a[i] = a[i].trim();

                    name.add(takeName(a[i]));
                  }
                  print(name);
                  int count = 0;
                  for (int i = 0; i < name.length; i++) {
                    if (name[i] == 'An') {
                      count++;
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
                              Text(count.toString()),
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
                  child: const Text("Tuan 7 bai 7"),
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  maxLines: null,
                  controller: t7B7,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  String takeMiddleName(String x) {
                    List<String> name = [];
                    name = x.split(' ');
                    return name[1];
                  }

                  List<String> a = t7B8.text.split(',');
                  List<String> name = [];
                  for (int i = 0; i < a.length; i++) {
                    print(takeMiddleName(a[i]));
                    a[i] = a[i].trim();

                    name.add(takeMiddleName(a[i]));
                  }
                  print(name);
                  int count = 0;
                  for (int i = 0; i < name.length; i++) {
                    if (name[i] == 'Thị') {
                      count++;
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
                              Text(count.toString()),
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
                  child: const Text("Tuan 7 bai 8"),
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  maxLines: null,
                  controller: t7B8,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  String takeFirstName(String x) {
                    List<String> name = [];
                    name = x.split(' ');
                    return name[0];
                  }

                  List<String> a = t7B9.text.split(',');

                  List<String> name = [];
                  for (int i = 0; i < a.length; i++) {
                    print(takeFirstName(a[i]));
                    a[i] = a[i].trim();
                    name.add(takeFirstName(a[i]));
                  }
                  print(name);
                  int count = 0;
                  for (int i = 0; i < name.length; i++) {
                    if (name[i][0] == 'H') {
                      count++;
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
                              Text(count.toString()),
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
                  child: const Text("Tuan 7 bai 8"),
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  maxLines: null,
                  controller: t7B9,
                  decoration:
                      const InputDecoration(hintText: 'Mời nhập dãy số : '),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
