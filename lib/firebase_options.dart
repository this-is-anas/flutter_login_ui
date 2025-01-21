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
    apiKey: 'AIzaSyCHf4tafkYkD3wM2nXJu-NOUO4e70oWM1I',
    appId: '1:1063082167396:web:b18c11ca4b2cf551cd6371',
    messagingSenderId: '1063082167396',
    projectId: 'jobly-e56cb',
    authDomain: 'jobly-e56cb.firebaseapp.com',
    storageBucket: 'jobly-e56cb.firebasestorage.app',
    measurementId: 'G-R58NJKE8SL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTM2vJtpOwuIFCjiSyL3t4XqSzApwId9A',
    appId: '1:1063082167396:android:93def4846faaad89cd6371',
    messagingSenderId: '1063082167396',
    projectId: 'jobly-e56cb',
    storageBucket: 'jobly-e56cb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-BxyE2Ok4ALxgNwrmzSZIXF90CTvqLe0',
    appId: '1:1063082167396:ios:006a3fa7738870eccd6371',
    messagingSenderId: '1063082167396',
    projectId: 'jobly-e56cb',
    storageBucket: 'jobly-e56cb.firebasestorage.app',
    iosBundleId: 'com.example.jobly',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-BxyE2Ok4ALxgNwrmzSZIXF90CTvqLe0',
    appId: '1:1063082167396:ios:006a3fa7738870eccd6371',
    messagingSenderId: '1063082167396',
    projectId: 'jobly-e56cb',
    storageBucket: 'jobly-e56cb.firebasestorage.app',
    iosBundleId: 'com.example.jobly',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCHf4tafkYkD3wM2nXJu-NOUO4e70oWM1I',
    appId: '1:1063082167396:web:752d625234d098ebcd6371',
    messagingSenderId: '1063082167396',
    projectId: 'jobly-e56cb',
    authDomain: 'jobly-e56cb.firebaseapp.com',
    storageBucket: 'jobly-e56cb.firebasestorage.app',
    measurementId: 'G-8SD36JQX38',
  );
}