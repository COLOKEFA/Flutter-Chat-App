import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfovod_OLuHbJKW2dePZ07kj2fr7CTKiY",
            authDomain: "buzzapp-691fa.firebaseapp.com",
            projectId: "buzzapp-691fa",
            storageBucket: "buzzapp-691fa.appspot.com",
            messagingSenderId: "577685757035",
            appId: "1:577685757035:web:474fe601e42366667f252e"));
  } else {
    await Firebase.initializeApp();
  }
}
