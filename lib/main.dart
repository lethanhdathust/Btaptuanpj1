import 'dart:io';
import 'dart:math';

import 'package:bttuan/Tuan%208/tuan_8.dart';
import 'package:bttuan/tuan4_screen.dart';
import 'package:bttuan/tuan5_screen.dart';
import 'package:bttuan/tuan6_screen.dart';
import 'package:bttuan/tuan7_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bai tap project ca nhan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Tuan 4'),
              const Tuan4Screen(),
              const Text('Tuan 5'),
              Tuan5Screen(),
              Text('Tuan 6'),
              Tuan6Screen(),
              Text('Tuan 7'),
              Tuan7Screen(),
              TextButton(
                  onPressed: () => Get.to(Tuan8()),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                          width: 1,
                          color: Colors.black,
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Tuan 8'),
                        )),
                  ))
            ],
          ),
        );
      }),
    );
  }
}
