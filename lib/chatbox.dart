import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chatbox extends StatelessWidget {
  const Chatbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 135, 192, 187),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomLeft: Radius.circular(80)),
                ),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Chat Box",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.snowmobile)
                  ],
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(180, 20, 0, 0),
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Mr. Majid",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Hi",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 150, 0),
              child: Container(
                height: 120,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomLeft: Radius.circular(80)),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Mehmood",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Hello Sir",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(180, 20, 0, 0),
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Mr. Majid",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "How r you?",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
