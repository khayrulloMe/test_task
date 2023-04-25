import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/ui/screen/add_debt/add_debt_screen.dart';
import 'package:test_task/ui/screen/chat/chat_screen.dart';
import 'package:test_task/ui/screen/home/home_screen.dart';
import 'package:test_task/ui/screen/main/main_screen.dart';
import 'package:test_task/ui/screen/profile/profile_screen.dart';
import 'package:test_task/ui/screen/signup/signup_screen.dart';
import 'ui/screen/signin/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isHaveUser = true;
      return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: HomeScreen.id, page: () => HomeScreen()),
        GetPage(name: SignInScreen.id, page: () => SignInScreen()),
        GetPage(name: SignUpScreen.id, page: () => SignUpScreen()),
        GetPage(name: ProfileScreen.id, page: () => ProfileScreen()),
        GetPage(name: ChatScreen.id, page: () => ChatScreen()),
        GetPage(name: MainScreen.id, page: () =>  MainScreen()),
        GetPage(name: AddDebtScreen.id, page: () => AddDebtScreen()),
    ]
      ,
      initialRoute: isHaveUser? MainScreen.id:SignInScreen.id,
    );
  }
}
