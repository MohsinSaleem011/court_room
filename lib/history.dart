import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool isswitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Search History",
                  style: TextStyle(
                      color: Colors.green.withOpacity(0.5), fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Show the classes I search most at the top",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8), fontSize: 15),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "On",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Let App save my searches at future search suggestions ",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8), fontSize: 14),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "On",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Search History in App",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8), fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Click Here",
                      style: TextStyle(
                          color: Colors.red.withOpacity(0.8), fontSize: 14),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 150,
                  color: Colors.grey.withOpacity(0.6),
                  child: Center(
                      child: Text(
                    "Delete history",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Use these classes to search",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.list),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Case List",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.cases_rounded),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "My Cases",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Search Case",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.car_crash_outlined),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Lawyers",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.chat_outlined),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Chat Box",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 97,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.contact_page),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Contact List",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.cases_rounded),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Case Details",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.photo),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Photos",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 105,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.child_care),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Clients",
                    style: TextStyle(
                        color: Colors.lime,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 105,
                  ),
                  Text(
                    "On",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CustomSwitch(
                    value: isswitched,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      print("$value");
                      setState(() {
                        isswitched = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
