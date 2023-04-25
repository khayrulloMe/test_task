import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/controller/add_debt/add_debt_controller.dart';

class AddDebtScreen extends StatelessWidget {
  static const id = '/addDebt';

  AddDebtScreen({Key? key}) : super(key: key);
  final _controller = Get.put(AddDebtController());

  @pragma('vm:entry-point')
  static void runTasks() {
    final DateTime now = DateTime.now();
    final int isolateId = Isolate.current.hashCode;
    print("[$now] Hello, world! isolate=${isolateId} function='$runTasks'");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add debt')),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              ...List.generate(_controller.debts.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                        child: Row(children: [
                          Text(_controller.debts[index].toString()),
                          Expanded(child: Container()),
                          Text(_controller.debts[index].toString()),
                        ],),
                      ) ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
