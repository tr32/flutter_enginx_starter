import 'package:flutter/material.dart';
import 'package:flutter_enginx_starter/theme/styles.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Registration", style: CustomStyles.appstyle(36, Colors.black, FontWeight.bold)),
      ),
    );
  }
}
