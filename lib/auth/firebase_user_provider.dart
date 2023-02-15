import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CosmicFirebaseUser {
  CosmicFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CosmicFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CosmicFirebaseUser> cosmicFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CosmicFirebaseUser>(
      (user) {
        currentUser = CosmicFirebaseUser(user);
        return currentUser!;
      },
    );
