//-----------------------GOOGLE AUTHENTICATION ------------------------
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
final FacebookLogin facebookSignIn = FacebookLogin();
final FirebaseAuth _auth = FirebaseAuth.instance;

Future<FirebaseUser> signInWithGoogle() async {
  print("Signing in with Google");
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );
  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);
  // print(googleSignInAccount);
  return user;
}

void signOutGoogle() async {
  await googleSignIn.signOut();
  print("User sign out.");
}

//-----------------------FACEBOOK AUTHENTICATION ------------------------

Future<FirebaseUser> signInWithFacebook() async {
  print("Signing in with FB");

  final facebookLogin = FacebookLogin();
  final result = await facebookLogin.logIn(['email']);

  switch (result.status) {
    case FacebookLoginStatus.loggedIn:
      AuthCredential credential = FacebookAuthProvider.getCredential(
          accessToken: result.accessToken.token);
      final AuthResult authResult =
          await _auth.signInWithCredential(credential);
      final FirebaseUser user = authResult.user;
      print("DONE DONE DONE: $user");
      return user;
      break;
    case FacebookLoginStatus.cancelledByUser:
      print("Cancelled by user");
      break;
    case FacebookLoginStatus.error:
      print(result.errorMessage);
      break;
  }
  return null;
}

void signOutFacebook() async {
  await facebookSignIn.logOut();
  print("User sign out.");
}

//-----------------------Email/Password AUTHENTICATION ------------------------

Future<FirebaseUser> SignInWithEmail(String email, String password) async {
  AuthResult result =
      await _auth.signInWithEmailAndPassword(email: email, password: password);
  final FirebaseUser user = result.user;

  assert(user != null);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();

  assert(user.uid == currentUser.uid);
  print("Signed in: $user");
  return user;
}

Future<FirebaseUser> SignUpWithEmail(email, password) async {
  AuthResult result = await _auth.createUserWithEmailAndPassword(
      email: email, password: password);
  final FirebaseUser user = result.user;

  assert(user != null);
  assert(await user.getIdToken() != null);

  return user;
}

//----------------------SIGN OUT ------------------------

Future<void> SignOut() async {
  print("Signing out");
  await _auth.signOut();
}
