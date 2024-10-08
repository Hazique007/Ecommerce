// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVMG1u8-ZUOjfn9hCYyETdMdsJVN54KAA',
    appId: '1:443943838279:android:ec166e971f67b58a5d0762',
    messagingSenderId: '443943838279',
    projectId: 'ecommerce-5bc45',
    storageBucket: 'ecommerce-5bc45.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWGBsbyn_7nosCEiUgmDxXZ8FY6L16xvI',
    appId: '1:443943838279:ios:8ac91a0c17c9839a5d0762',
    messagingSenderId: '443943838279',
    projectId: 'ecommerce-5bc45',
    storageBucket: 'ecommerce-5bc45.appspot.com',
    androidClientId: '443943838279-sh6ftinj1neg6p9rggv3g3p83f6divsc.apps.googleusercontent.com',
    iosClientId: '443943838279-ef35uun5bn6klcc73nnuo4sh1gk2b70h.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerce',
  );
}
