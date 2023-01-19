import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:court_room/contact.dart';
import 'package:court_room/history.dart';
import 'package:court_room/lawyer,user.dart';
import 'package:court_room/mainmenu.dart';
import 'package:court_room/notify.dart';
import 'package:court_room/password.dart';
import 'package:court_room/restapi.dart';
import 'package:court_room/signup.dart';
import 'package:court_room/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';
import 'firebase.dart';
import 'newsupdate.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPassword = true;
  bool isRetypePassword = true;
  FocusNode? passwordFocus;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var globalkey1 = GlobalKey<FormState>();
  saveform(BuildContext context) async {
    if (globalkey1.currentState!.validate()) {
      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);
    }
    FirebaseAuth auth = FirebaseAuth.instance;
    var u = auth.currentUser!.uid;
    if (u != null) {
      Navigator.push(context, MaterialPageRoute(builder: (c) {
        return MainMenu();
      }));
    }
  }

  String bp =
      'https://upload.wikimedia.org/wikipedia/commons/1/1e/COA_courtroom_1.jpg';

  String qp =
      'https://media.istockphoto.com/photos/law-theme-judge-chamber-picture-id1303997113?b=1&k=20&m=1303997113&s=170667a&w=0&h=SbTpxUzzxVYf04qOsfzRwkef25tB6xIjEUjs-Id1ctU=';
  String xp =
      'https://images.unsplash.com/photo-1606086357148-3042ce0fba3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Image(
                    image: CachedNetworkImageProvider(bp),
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                  key: globalkey1,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(205),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        child: TextFormField(
                          controller: email,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: InputBorder.none,
                          ),
                          textInputAction: TextInputAction.next,
                          focusNode: FocusNode(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(205),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        child: TextFormField(
                          controller: password,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  saveform(context);
                },
                height: 60,
                minWidth: 340,
                shape: StadiumBorder(),
                color: Colors.green.withOpacity(0.5),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (a) {
                    return Password();
                  }));
                },
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (a) {
                            return SignupPage();
                          }));
                        },
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.green.withOpacity(0.7),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 310,
                child: Image(
                  image: CachedNetworkImageProvider(qp),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_circle_right_outlined),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LoginPage();
                          }));
                        },
                        child: Text("Sign In",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return Notify();
                          }));
                        },
                        child: Text("Notifications",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.newspaper),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return NewsUpdate();
                          }));
                        },
                        child: Text("News & Updates",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.contact_page),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return Contact();
                          }));
                        },
                        child: Text("Contact Us",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.history),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return History();
                          }));
                        },
                        child: Text("History",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.history),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return RestApi();
                          }));
                        },
                        child: Text("Rest Api",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
