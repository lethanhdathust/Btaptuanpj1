import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'can_bo.dart';
import 'cong_nhan.dart';
import 'ky_su.dart';
import 'nhan_vien.dart';
import 'tuan_8_controller.dart';

class Tuan8 extends StatelessWidget {
  Tuan8({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quan Ly Can Bo"),
          backgroundColor: Colors.green,
        ),
        body: GetBuilder(
          init: QuanLiCanBo(),
          builder: (controller) => Form(
            key: controller.formKey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Address',
                    ),
                    obscureText: false,
                    controller: controller.myController1,
                    onChanged: ((value) {}),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: TextFormField(
                    validator: ((value) {
                      value = value?.toLowerCase();
                      if (value is int) {
                        return 'Please input again';
                      }
                      return null;
                    }),
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: false,
                    controller: controller.myController2,
                    onChanged: ((value) {}),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: TextFormField(
                    validator: ((value) {
                      value = value?.toLowerCase();
                      if (value != 'nam' && value != 'nu' && value != '') {
                        return 'Please input again';
                      }
                      return null;
                    }),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Genre',
                    ),
                    obscureText: false,
                    controller: controller.myController3,
                    onChanged: ((value) {}),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                    obscureText: false,
                    controller: controller.myController4,
                    onChanged: ((value) {}),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Can bo da them thanh cong')),
                        );
                        controller.addCanBo(
                            controller.myController1.text,
                            int.parse(controller.myController2.text),
                            controller.myController3.text,
                            controller.myController4.text);
                        controller.myController1.clear();
                        controller.myController2.clear();
                        controller.myController3.clear();
                        controller.myController4.clear();
                      }
                    },
                    child: const Text('Add can bo'),
                  ),
                ),
                TextField(
                  controller: controller.myControllerSearch,
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    suffixIcon: Icon(Icons.search),
                  ),
                  obscureText: false,
                  onChanged: ((value) {
                    controller.runFilter(value);
                  }),
                ),
                Obx(
                  () {
                    return controller.search.isNotEmpty
                        ? Expanded(
                            child: ListView.builder(
                              itemBuilder: ((context, index) => Row(
                                        children: [
                                          Text(
                                              'Name: ${controller.search[index].name}'),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                              "age: ${controller.search[index].age}"),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                              'address: ${controller.search[index].address}'),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                              "Genre: ${controller.search[index].genre}"),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      )
                                  // Text(search[index].age.toString()),
                                  ),
                              itemCount: controller.search.length,
                            ),
                          )
                        : const SizedBox();
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Danh sach can bo",
                    textScaleFactor: 2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(
                    () => Table(
                      children: List.generate(controller.canBo.length, (index) {
                        return TableRow(
                          children: [
                            Text('Name: ${controller.canBo.value[index].name}'),
                            Text("age: ${controller.canBo.value[index].age}"),
                            Text(
                                'address: ${controller.canBo.value[index].address}'),
                            Text(
                                "Genre: ${controller.canBo.value[index].genre}"),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
