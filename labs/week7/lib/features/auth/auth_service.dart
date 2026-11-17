import 'package:firebase_auth/firebase_auth.dart';

enum SignInResult() {
  invalidEmail,
  userDisabled,
  userNotFound,
  wrongPassword,
  success,
}

class AuthService(final FirebaseAuth auth) {
  bool get isSignedIn => auth.currentUser != null;

  Stream<bool> get isSignedInStream =>
      auth.authStateChanges().map((user) => user != null);

  String get userEmail => currentUser!.email!;

  User? get currentUser => auth.currentUser;

  Future<SignInResult> signInWithEmail(String email, String password) async {
    try {
      if (isSignedIn) {
        await auth.signOut();
      }
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return .success;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          return .invalidEmail;
        case 'user-disabled':
          return .userDisabled;
        case 'user-not-found' || 'invalid-credential':
          return .userNotFound;
        case 'wrong-password':
          return .wrongPassword;
        default:
          rethrow;
      }
    }
  }

  Future<bool> signUpWithEmail(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException {
      return false;
    }
  }

  Future<void> signOut() {
    return auth.signOut();
  }
}
