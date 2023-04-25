
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/controller/main/main_screen_controller.dart';
import 'package:test_task/ui/screen/add_debt/add_debt_screen.dart';
import 'package:test_task/ui/screen/chat/chat_screen.dart';
import 'package:test_task/ui/screen/home/home_screen.dart';
import 'package:test_task/ui/screen/profile/profile_screen.dart';

class MainScreen extends StatelessWidget {
  static const id  = '/main';
  MainScreen({Key? key}) : super(key: key);
  final _controller = Get.put(MainScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          body:IndexedStack(
              index: _controller.index.value,
              children: [HomeScreen(),AddDebtScreen(),ChatScreen(),ProfileScreen()],),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
            BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home',backgroundColor: Colors.indigo),
            BottomNavigationBarItem(icon:Icon(Icons.add_box_outlined),label: 'Add'),
            BottomNavigationBarItem(icon:Icon(Icons.chat),label: 'Chat'),
            BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Profile'),],
          onTap: (value) => _controller.changeIndex(value),
          backgroundColor: Colors.indigo,
            currentIndex: _controller.index.value,
            elevation: 0,
            // showSelectedLabels: true,
            // showUnselectedLabels: false,
          ),
        ),
      )

    );
  }
}
