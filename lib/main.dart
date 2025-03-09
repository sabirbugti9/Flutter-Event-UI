import 'package:event_app/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple),
        scaffoldBackgroundColor: const Color.fromARGB(255, 247, 243, 255),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
