import 'package:flutter/material.dart';
import 'package:flutter_enginx_starter/theme/styles.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("OTP Verification", style: CustomStyles.appstyle(36, Colors.black, FontWeight.bold)),
      ),
    );
  }
}
