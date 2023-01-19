import 'package:flutter/material.dart';

import 'hier.dart';

class New6 extends StatefulWidget {
  const New6({Key? key}) : super(key: key);

  @override
  State<New6> createState() => _New6State();
}

class _New6State extends State<New6> {
  Future<void> McoDialogue(String a) async {
    showDialog(
      context: context,
      barrierColor: Colors.cyan,
      builder: (_) {
        return AlertDialog(
          backgroundColor: Colors.yellow,
          title: Text(a),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4, 10, 0, 0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.cyan.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.cyan.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4, 10, 0, 0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 40, 0, 0),
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter your name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 0, 0),
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Father's Name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 0, 0),
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Advocate Name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 0, 0),
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Judge Name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 0, 0),
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Case Title",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 0, 0),
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Case Type",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 0, 0),
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Court #",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.cyan,
              onPressed: () {
                McoDialogue("Case Registered");
              },
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.yellow, fontSize: 20),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
