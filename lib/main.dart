import 'package:flutter/material.dart';
import 'package:news_snack/view/home.dart';
import 'package:news_snack/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash = true;
  loadHome() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showingSplash = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    loadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewsWave',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showingSplash ?const  SplashScreen() :const  HomeScreen(),
    );
  }
}
