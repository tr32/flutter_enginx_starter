import 'package:flutter/material.dart';

import '../utils/device_util.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    DeviceUtil(context);
    return Scaffold();
  }
}