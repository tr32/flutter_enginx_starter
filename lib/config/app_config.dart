import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_enginx_starter/firebase_options.dart';

/// Configuration constants for Keycloak and Firebase.
class AppConfig {
  // --- Backend Configuration ---
  // The base URL of your Spring Boot custom authentication module.
  static const String backendBaseUrl = 'http://localhost:8080';

  // --- Firebase Configuration ---
  // IMPORTANT: You need to generate this file by running 'flutterfire configure'
  // or manually place your GoogleService-Info.plist (iOS) / google-services.json (Android).
  // This will dynamically get the correct FirebaseOptions for the current platform.
  // static FirebaseOptions get currentFirebaseOptions {
  //   // This is a placeholder. You should replace it with the actual
  //   // FirebaseOptions from your generated firebase_options.dart file.
  //   // Example: return DefaultFirebaseOptions.currentPlatform;
  //   // For now, returning dummy options to avoid compilation errors.
  //   //return const FirebaseOptions(
  //   //  apiKey: 'YOUR_FIREBASE_API_KEY',
  //   //  appId: 'YOUR_FIREBASE_APP_ID',
  //   //  messagingSenderId: 'YOUR_FIREBASE_MESSAGING_SENDER_ID',
  //   //  projectId: 'YOUR_FIREBASE_PROJECT_ID',
  //   //  storageBucket: 'YOUR_FIREBASE_STORAGE_BUCKET',
  //   //);
  //   return DefaultFirebaseOptions.currentPlatform;
  // }
}
