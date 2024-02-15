import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ClientListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, // Set the desired color for the back icon
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('My Clients',style: TextStyle(fontWeight: FontWeight.bold,)),
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('clients').get(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final clients = snapshot.data!.docs;
            return ListView.builder(
              itemCount: clients.length,
              itemBuilder: (context, index) {
                final client = clients[index];
                final name = client['name'];
                final phone = client['phone'];
                return ListTile(
                  title: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,
                      color: Colors.blue )),
                  subtitle: Text(phone,style:TextStyle(fontSize: 16,
                color: Colors.black)),
                );
              },
            );
          }
        },
      ),
    );
  }
}
