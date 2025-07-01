import 'package:flutter/material.dart';
import 'package:flutter_enginx_starter/theme/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Login", style: CustomStyles.appstyle(36, Colors.black, FontWeight.bold)),
      ),
    );
  }
}
