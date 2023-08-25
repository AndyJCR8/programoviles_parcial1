import 'package:flutter/material.dart';
import 'package:parcial_1/botombar.dart';
import 'Services.dart';
import 'Topbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Topbar(),
          Expanded(child: SingleChildScrollView(
            child: Services(),
          )),
          BottomBar()
        ]),
      ),
    );
  }
}