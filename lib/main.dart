import 'package:flutter/material.dart';
import 'package:hesap_makinesi/calculator.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hesap Makinesi",
      theme: ThemeData.dark(),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.calculate),
            Text(
              "Hesap Makinesi",
            ),
          ],
        ),
      ),
      body: Calculator(),
    );
  }
}
