import 'package:flutter/material.dart';
import 'package:flutter_app/core/util/utils.dart';
import 'package:flutter_app/ui/views/launch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Khai báo lấy key context để dùng cho app
      navigatorKey: Utils.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: LaunchView(),
    );
  }
}
