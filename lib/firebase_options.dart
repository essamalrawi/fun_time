// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDuOmR3VSfGsijYrFJyi72bL-8y0HJKyiE',
    appId: '1:925501138256:web:3bc003e1914701b3b9f855',
    messagingSenderId: '925501138256',
    projectId: 'funtime-20e00',
    authDomain: 'funtime-20e00.firebaseapp.com',
    storageBucket: 'funtime-20e00.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIA0LFmtNDOyw79mUPx0H0uHNytQNPwNs',
    appId: '1:925501138256:android:363e03b8a822abcfb9f855',
    messagingSenderId: '925501138256',
    projectId: 'funtime-20e00',
    storageBucket: 'funtime-20e00.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApR66ahHZQwIhPEJd61Wox9k9ravsdDXU',
    appId: '1:925501138256:ios:a0098a2321969922b9f855',
    messagingSenderId: '925501138256',
    projectId: 'funtime-20e00',
    storageBucket: 'funtime-20e00.firebasestorage.app',
    iosBundleId: 'com.example.funTime',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApR66ahHZQwIhPEJd61Wox9k9ravsdDXU',
    appId: '1:925501138256:ios:a0098a2321969922b9f855',
    messagingSenderId: '925501138256',
    projectId: 'funtime-20e00',
    storageBucket: 'funtime-20e00.firebasestorage.app',
    iosBundleId: 'com.example.funTime',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDuOmR3VSfGsijYrFJyi72bL-8y0HJKyiE',
    appId: '1:925501138256:web:510b306aa953512bb9f855',
    messagingSenderId: '925501138256',
    projectId: 'funtime-20e00',
    authDomain: 'funtime-20e00.firebaseapp.com',
    storageBucket: 'funtime-20e00.firebasestorage.app',
  );
}
