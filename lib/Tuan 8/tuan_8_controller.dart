import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'can_bo.dart';
import 'cong_nhan.dart';
import 'ky_su.dart';
import 'nhan_vien.dart';

class QuanLiCanBo extends GetxController {
  late final RxList<CanBo> canBo;
  RxList<CongNhan> cong_nhan = RxList([]);
  RxList<KySu> ky_su = RxList([]);
  RxList<NhanVien> nhan_vien = RxList([]);
  final formKey = GlobalKey<FormState>();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myControllerSearch = TextEditingController();
  List<CanBo> k = [
    CanBo('Nghe An', 1, "Nam", "Dat"),
    CanBo('Thanh Hoa', 2, "Nu", "Minh"),
    CanBo('Ha Noi', 3, "Nam", "Hoa"),
    CanBo('Ca mau', 4, "Nam", "Duong")
  ];
  List<CanBo> search = [];
  @override
  void onInit() {
    canBo = RxList([]);
    canBo.addAll(k);
    search = canBo;
    super.onInit();
  }

  void addCanBo(String address, int id, String genre, String name) {
    canBo.add(CanBo(address, id, genre, name));
  }

  void runFilter(String enteredKeyword) {
    List<CanBo> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = canBo;
    } else {
      results = canBo
          .where((user) =>
              user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    search = results;
    update();
  }

  @override
  void onClose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    myController3.dispose();

    myController4.dispose();
    myControllerSearch.dispose();
    super.onClose();
  }
}
