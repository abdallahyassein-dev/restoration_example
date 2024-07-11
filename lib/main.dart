import 'package:flutter/material.dart';
import 'package:restoration_example/normal_with_out_restoration.dart';
import 'package:restoration_example/restoration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      restorationScopeId: "root_app",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue[400]!),
        useMaterial3: true,
      ),
      home: const PageWithRestoration(),
    );
  }
}
