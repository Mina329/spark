import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () async {
          // Create an instance of FirebaseAuth, GoogleSignIn, and FacebookAuth
          final FirebaseAuth auth = FirebaseAuth.instance;
          final GoogleSignIn googleSignIn = GoogleSignIn();
          final FacebookAuth facebookAuth =
              FacebookAuth.instance; // Instance for Facebook sign-in

          User? currentUser = auth.currentUser;

// Check if the user is not null
          if (currentUser != null) {
            // Determine if the user is signed in with Google
            bool isGoogleUser = currentUser.providerData
                .any((userInfo) => userInfo.providerId == 'google.com');

            // Determine if the user is signed in with Facebook
            bool isFacebookUser = currentUser.providerData
                .any((userInfo) => userInfo.providerId == 'facebook.com');

            // Determine if the user is signed in anonymously
            bool isAnonymous = currentUser.isAnonymous;

            if (isGoogleUser) {
              // User is signed in with Google, so sign out from Google
              await googleSignIn.signOut();
            } else if (isFacebookUser) {
              // User is signed in with Facebook, so sign out from Facebook
              await facebookAuth.logOut();
            }
            if (isAnonymous) {
              await currentUser.delete();
            }
            // For both Google and Facebook users, as well as other authentication methods:
            // Sign out from Firebase Auth
            await auth.signOut();

            // For anonymous users, delete the account instead of signing out

            // Navigate to AuthView after sign-out or account deletion
            Get.offAllNamed(AppRouter.kAuthView);
          }
        },
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(
            Colors.red,
          ),
          overlayColor: MaterialStatePropertyAll(
            Color.lerp(Colors.red, Colors.white, 0.3),
          ),
        ),
        child: Text(
          StringsManager.signOut,
          style: StylesManager.styleLatoBold20(context)
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
