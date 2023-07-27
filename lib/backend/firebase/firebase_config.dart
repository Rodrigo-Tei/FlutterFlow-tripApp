import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCovEyHxKnkHcQ8I8GgyTalNGxPg2Nhh3U",
            authDomain: "tripsapp-174a0.firebaseapp.com",
            projectId: "tripsapp-174a0",
            storageBucket: "tripsapp-174a0.appspot.com",
            messagingSenderId: "938492833730",
            appId: "1:938492833730:web:1b9ab1c0b5ab6d9e5ff05b"));
  } else {
    await Firebase.initializeApp();
  }
}
