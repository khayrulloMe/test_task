import 'dart:isolate';
import 'package:flutter/material.dart';

class AddDebtScreen extends StatelessWidget {
 static const id = '/addDebt';
  @pragma('vm:entry-point')
  static void runTasks() {
    final DateTime now = DateTime.now();
    final int isolateId = Isolate.current.hashCode;
    print("[$now] Hello, world! isolate=${isolateId} function='$runTasks'");
  }

  const AddDebtScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('AddDebtScreen')),
    );
  }
}
