import 'package:cached_network_image/cached_network_image.dart';
import 'package:court_room/chatbox.dart';
import 'package:court_room/contact.dart';
import 'package:court_room/loginpage.dart';
import 'package:court_room/new1.dart';
import 'package:flutter/material.dart';

import 'Lawyerhier.dart';
import 'contactlist.dart';
import 'lawyer5.dart';
import 'new2.dart';
import 'new3.dart';
import 'new4.dart';
import 'new5.dart';

class MainMenu extends StatelessWidget {
  String sp =
      'https://st.depositphotos.com/1010751/4647/v/380/depositphotos_46472265-stock-illustration-justice-court-building-image-logo.jpg?forcejpeg=true';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 315,
                color: Colors.white.withOpacity(0.1),
                width: double.infinity,
                child: Image(
                  image: CachedNetworkImageProvider(sp),
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (a) {
                        return New1();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(60, 10, 0, 0),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.list_alt_outlined),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Cases",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (a) {
                        return New2();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(80, 10, 0, 0),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.cases_rounded),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Case Type",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(60, 30, 0, 0),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.3)),
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Icon(Icons.search_outlined),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "Search case",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return AllTasksScreen();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(80, 30, 0, 0),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.commute_rounded),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Lawyers",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return Chatbox();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(60, 30, 0, 0),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.chat_bubble_outline),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Chat Box",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return ContactList();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(80, 30, 0, 0),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.contact_page),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Contact List",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return New3();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(65, 30, 0, 0),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.cases_sharp),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Case Details",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return New4();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(65, 30, 0, 0),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.history_edu_outlined),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Photos",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return New5();
                  }));
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(65, 30, 0, 0),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.cases),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Register Case",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return LawyerHier();
                        }));
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(65, 30, 0, 0),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            const Icon(Icons.cases),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              "Hier Lawyers",
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 80),
              MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.amber,
                  child: Text("Logout"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return LoginPage();
                    }));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
