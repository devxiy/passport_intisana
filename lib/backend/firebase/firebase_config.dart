import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB-9i-NhnPY3oCiMgJneBmFZf4tvFrAznQ",
            authDomain: "passport-intisana.firebaseapp.com",
            projectId: "passport-intisana",
            storageBucket: "passport-intisana.appspot.com",
            messagingSenderId: "936685681765",
            appId: "1:936685681765:web:7259cd5d767b285ee69a8c",
            measurementId: "G-SDH1JCGW37"));
  } else {
    await Firebase.initializeApp();
  }
}
