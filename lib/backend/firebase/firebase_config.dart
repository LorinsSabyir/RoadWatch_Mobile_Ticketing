import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCtm13zs3F9-8fMLqyyiJBg5gX1yWVc8Fg",
            authDomain: "road-watch-capstone-pro-bj1osc.firebaseapp.com",
            projectId: "road-watch-capstone-pro-bj1osc",
            storageBucket: "road-watch-capstone-pro-bj1osc.firebasestorage.app",
            messagingSenderId: "972099236659",
            appId: "1:972099236659:web:210418b55cac3474de0446"));
  } else {
    await Firebase.initializeApp();
  }
}
