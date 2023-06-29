import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService extends ChangeNotifier {
  // Instance of FirebaseAuth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //instance for the firestore
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  // Sign user in
  Future<UserCredential> signInWithEmailAndPassword(String email,
      String password) async {
    try {
      // Sign in
      UserCredential userCredential =
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
//add a new document for the user in users collection if it doesnt already exists
      _fireStore.collection('users').doc(userCredential.user!.uid).set({
        'uid':userCredential.user!.uid,
        'email': email,
      },SetOptions(merge: true));


      return userCredential;
    }
    //catch any errors
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //create a new user
  Future<UserCredential> signUpWithEmailAndPassword(String email,String password)

  async{
    try{

      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email:email,
        password:password,
      );

      //after creating the user,create a new document for the user collection
      _fireStore.collection('users').doc(userCredential.user!.uid).set({
        'uid':userCredential.user!.uid,
        'email': email,
      });
      
      
      
      return userCredential;
    }on FirebaseAuthException catch (e) {
    throw Exception(e.code);

    }
  }



  //sign user out
  Future<void> signOut() async {
    return await FirebaseAuth.instance.signOut();
  }
}
