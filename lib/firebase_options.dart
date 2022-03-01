// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAM8xAkYH-HUV5QFZwBYL_7XQDpp6wF8xE',
    appId: '1:182508972090:web:c474871e12f8ab754cad03',
    messagingSenderId: '182508972090',
    projectId: 'flutteapplication1',
    authDomain: 'flutteapplication1.firebaseapp.com',
    storageBucket: 'flutteapplication1.appspot.com',
    measurementId: 'G-PZWFCZ4HR4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB432bNOfAFXzmE6NjUSiV77W4FX9it-4M',
    appId: '1:182508972090:android:d5d2a86a9e4f26ca4cad03',
    messagingSenderId: '182508972090',
    projectId: 'flutteapplication1',
    storageBucket: 'flutteapplication1.appspot.com',
  );
}
