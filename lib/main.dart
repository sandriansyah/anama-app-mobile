import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'core/component/customer_card.dart';
import 'core/layout/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Hook",
      home: BottomNavigation(),
    );
  }
}
