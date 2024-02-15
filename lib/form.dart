import 'package:angz_talbk/menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'clientList.dart';

class form extends StatelessWidget {
  const form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController nameController = TextEditingController();

    Future<void> createNewClient() async {
      final email = emailController.text.trim();
      final phone = phoneController.text.trim();
      final name = nameController.text.trim();

      try {
        // Save client information to Firestore
        await FirebaseFirestore.instance.collection('clients').add({
          'email': email,
          'phone': phone,
          'name': name,
        });

        // Clear text fields after saving
        emailController.clear();
        phoneController.clear();
        nameController.clear();
        Get.to(menu(name: name));
        // Show a success message or navigate to another page
        // For example:
        // Get.to(menu());
        print('Client information saved successfully');
      } catch (e) {
        // Handle errors
        print('Failed to save client information: $e');
      }
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Spoon.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: emailController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.account_circle, color: Colors.black),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: phoneController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Phone',
                      prefixIcon: Icon(Icons.phone, color: Colors.black),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: nameController,
                    cursorColor: Colors.black,

                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: InputBorder.none,
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    MaterialButton(
                      onPressed: createNewClient,
                      child: Text(
                        'Let\'s Order',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      color: Colors.green,
                      textColor: Colors.white,
                      height: 50,
                      minWidth: 100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ClientListPage()),
                        );
                      },
                      child: Text(
                        'My Clients',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      color: Colors.green,
                      textColor: Colors.white,
                      height: 50,
                      minWidth: 100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
