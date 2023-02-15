import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB7gmTBIieZxu7On--L2f1JQkXcaga11KA",
            authDomain: "cosmic-95899.firebaseapp.com",
            projectId: "cosmic-95899",
            storageBucket: "cosmic-95899.appspot.com",
            messagingSenderId: "319475303551",
            appId: "1:319475303551:web:27217a48790b4af2af6b4a",
            measurementId: "G-K835G2M0Z3"));
  } else {
    await Firebase.initializeApp();
  }
}
