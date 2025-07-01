import 'package:flutter/material.dart';
import 'package:flutter_enginx_starter/theme/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home", style: CustomStyles.appstyle(36, Colors.black, FontWeight.bold)),
      ),
    );
  }
}
