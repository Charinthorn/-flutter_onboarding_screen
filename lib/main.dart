import 'package:flutter/material.dart';
import 'package:onboarding_screen/screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen/home_screen.dart';

bool show = true; //ประกาศเป้นgobal ทุกตัวแปรดูได้
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs =
      await SharedPreferences.getInstance(); //เมื่ออยู่ในช่วงruntime จะทำงาน
  show = prefs.getBool('ON_BOARDING') ?? true; //vriable name (on_boarding)
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: IntroScreen(),
    );
  }
}
