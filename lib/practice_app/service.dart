import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//Sign Up
Future<String> signup(String username , String email , String password) async {
  UserCredential userData = await _auth.createUserWithEmailAndPassword(email: email, password: password);
  try {
    return "user seccsesfully created";
  } catch (e) {
    return e.toString();
  }
}
