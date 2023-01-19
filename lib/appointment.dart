import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:court_room/lawyer5.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class Appointment1 extends StatefulWidget {
  @override
  State<Appointment1> createState() => _Appointment1State();
}

class _Appointment1State extends State<Appointment1> {
  CollectionReference AllTasks =
      FirebaseFirestore.instance.collection('AllTasks');
  Future<void> addUser() {
    return AllTasks.add({'name': task, 'date': dat, 'time': tim})
        .then((value) => print("user added"))
        .catchError((error) => print("failed to delete user $error"));
  }

  clearText() {
    _taskC.clear();
    _dateC.clear();
    _timeC.clear();
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _taskC = TextEditingController();
  final TextEditingController _dateC = TextEditingController();
  final TextEditingController _timeC = TextEditingController();
  String task = '';
  String dat = '';

  String tim = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Appointment",
          style: TextStyle(color: Colors.pink, fontSize: 30),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return AllTasksScreen();
                }));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            DigitalClock(
              areaDecoration:
                  BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              areaAligment: AlignmentDirectional.center,
              hourMinuteDigitDecoration: BoxDecoration(
                  // border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Colors.transparent),
              hourMinuteDigitTextStyle:
                  TextStyle(fontSize: 20, color: Colors.white),
              secondDigitTextStyle:
                  TextStyle(fontSize: 15, color: Colors.white),
              digitAnimationStyle: Curves.fastOutSlowIn,
              amPmDigitTextStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _taskC,
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return "please enter name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _dateC,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter City Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: _timeC,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Detail of Case",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(
                    () {
                      task = _taskC.text;
                      dat = _dateC.text;
                      tim = _timeC.text;
                      addUser();
                      clearText();
                    },
                  );
                }
              },
              child: Text("Register"),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
