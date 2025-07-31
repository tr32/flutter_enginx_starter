import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enginx_starter/provider/main_screen_notifier.dart';
import 'package:flutter_enginx_starter/screens/main_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:logger/logger.dart';
import 'package:flutter_enginx_starter/screens/home_screen.dart';

import 'config/app_config.dart';

final Logger logger = Logger();

Future<void> main() async {
  // Ensure Flutter widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  // await Firebase.initializeApp(
  //   options: AppConfig.currentFirebaseOptions,
  // );

  // Initialize Hive (local storage)
  await Hive.initFlutter();
  // Open necessary Hive boxes here
  await Hive.openBox<String>('authBox');
  await Hive.openBox<String>('userBox');

  runApp(
    // ProviderScope is required for Riverpod to work
    // Enables Dependency Inversion
    const ProviderScope(child: EnginxStarterApp()),
  );
}

class EnginxStarterApp extends StatelessWidget {
  const EnginxStarterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StarterApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
