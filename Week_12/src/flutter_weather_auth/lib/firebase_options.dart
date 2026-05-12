import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions belum dikonfigurasi untuk platform ini.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB7zdOXor4wFU6sSdiddiO9Th-4Bo5MGfE',
    appId: '1:947122131267:android:46e5d0370b916f24701ff6',
    messagingSenderId: '947122131267',
    projectId: 'weather-app-ec9d9',
    storageBucket: 'weather-app-ec9d9.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7zdOXor4wFU6sSdiddiO9Th-4Bo5MGfE',
    appId: '1:947122131267:android:46e5d0370b916f24701ff6',
    messagingSenderId: '947122131267',
    projectId: 'weather-app-ec9d9',
    storageBucket: 'weather-app-ec9d9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7zdOXor4wFU6sSdiddiO9Th-4Bo5MGfE',
    appId: '1:947122131267:android:46e5d0370b916f24701ff6',
    messagingSenderId: '947122131267',
    projectId: 'weather-app-ec9d9',
    storageBucket: 'weather-app-ec9d9.firebasestorage.app',
    iosBundleId: 'com.example.flutter_weather_auth',
  );
}
