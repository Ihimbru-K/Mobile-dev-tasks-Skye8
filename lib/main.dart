import 'package:flutter/material.dart';
import 'package:whatsapp_splash_screen/screen/Verify.dart';
import 'package:whatsapp_splash_screen/screen/Welcom.dart';
import './screen/Splash_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(color: Colors.white, home: Welcom());
  }
}


