import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'form.dart';
// Create an instance of FirebaseAuth
// final FirebaseAuth _auth = FirebaseAuth.instance;

// Example of signing in with email and password
// void signInWithEmailAndPassword() async {
//   try {
//     // Save client information to Firestore
//     await FirebaseFirestore.instance.collection('clients').add({
//       'email': 'mo@gmail.com',
//       'phone': '011',
//       'name': 'mo',
//     });
//
//     // Clear text fields after saving
//     // Show a success message or navigate to another page
//     // For example:
//     // Get.to(menu());
//     print('Client information saved successfully');
//   } catch (e) {
//     // Handle errors
//     print('Failed to save client information: $e');
//   }
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: form(),
    );
  }


}