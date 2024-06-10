import 'dart:io';
import 'package:flutter/material.dart';
import 'screens/Homepage.dart';
import 'package:provider/provider.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
} //bypass ssl check

void main() {
  HttpOverrides.global = MyHttpOverrides(); //ssl
  runApp(
    ChangeNotifierProvider(
      create: (context) => GlobalData(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
