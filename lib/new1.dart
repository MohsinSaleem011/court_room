import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class New1 extends StatefulWidget {
  @override
  State<New1> createState() => _New1State();
}

class _New1State extends State<New1> {
  final Stream<QuerySnapshot> tasksStream =
      FirebaseFirestore.instance.collection('AllTasks').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: tasksStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> Snapshot) {
          if (Snapshot.hasError) {
            print("Something went wrong");
          }
          if (Snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final List storeDocs = [];
          Snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storeDocs.add(a);
          }).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "My Cases",
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
              centerTitle: true,
            ),
            body: Column(
              children: [
                for (var i = 0; i < storeDocs.length; i++) ...[
                  ListTile(
                    tileColor: Colors.amber,
                    leading: Icon(Icons.person),
                    title: Text(storeDocs[i]['name']),
                    subtitle: Text(storeDocs[i]['date']),
                    trailing: Text(storeDocs[i]['time']),
                  ),
                ],
                ElevatedButton(
                    onPressed: () {
                      print(storeDocs);
                    },
                    child: Text("Thanks"))
              ],
            ),
          );
        });
  }
}
