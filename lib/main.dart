import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Design App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        "home": (_)=>Home(),
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollDesign(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
