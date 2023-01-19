import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:court_room/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'style.dart';

import 'button.dart';
import 'firebase.dart';
import 'package:court_room/textfield.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailC = TextEditingController();

  TextEditingController passwordC = TextEditingController();

  TextEditingController retypepasswordC = TextEditingController();
  bool ispassword = true;
  bool isretypepassword = true;
  bool formStateLoading = false;
  final formkey = GlobalKey<FormState>();
  void dispose() {
    // TODO: implement dispose
    emailC.dispose();
    passwordC.dispose();
    retypepasswordC.dispose();
    super.dispose();
  }

  Future<void> ecoDialogue(String error) async {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(error),
          actions: [
            EcoButton(
              title: 'CLOSE',
              onPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return LoginPage();
                }));
              },
            ),
          ],
        );
      },
    );
  }

  FocusNode? passwordfocus;
  FocusNode? retypepasswordfocus;
  submit() async {
    if (formkey.currentState!.validate()) {
      if (passwordC.text == retypepasswordC.text) {
        setState(() {
          formStateLoading = true;
        });
        String? accountstatus =
            await FirebaseService.createAccount(emailC.text, passwordC.text);
        if (accountstatus != null) {
          ecoDialogue(accountstatus);
          setState(() {
            formStateLoading = false;
          });
        }
        Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
      }
    }
  }

  String xp =
      'https://www.icj-cij.org/public/files/multimedia-galleries/20190717_ipak/01.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image(
              image: CachedNetworkImageProvider(xp),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                child: Column(
                  children: [
                    Form(
                      key: formkey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 160,
                          ),
                          Field(
                            validate: (v) {
                              if (v!.isEmpty ||
                                  !v.contains("@") ||
                                  !v.contains(".com")) {
                                return "email is badly formated";
                              }
                              return null;
                            },
                            inputAction: TextInputAction.next,
                            isPassword: false,
                            controller: emailC,
                            hintText: "Enter email.....",
                            icon: Icon(Icons.email),
                          ),
                          Field(
                            validate: (v) {
                              if (v!.isEmpty) {
                                return "password should not be a empty";
                              }
                              return null;
                            },
                            focusNode: passwordfocus,
                            inputAction: TextInputAction.next,
                            controller: passwordC,
                            isPassword: ispassword,
                            hintText: "Enter password.....",
                            icon: IconButton(
                              onPressed: () {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              },
                              icon: ispassword
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                          ),
                          Field(
                            validate: (v) {
                              if (v!.isEmpty) {
                                return "retypepassword should not be empty";
                              }
                              return null;
                            },
                            focusNode: retypepasswordfocus,
                            inputAction: TextInputAction.next,
                            controller: retypepasswordC,
                            isPassword: isretypepassword,
                            hintText: "Retype password.....",
                            icon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isretypepassword = !isretypepassword;
                                  });
                                },
                                icon: isretypepassword
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EcoButton(
                            isloginButton: true,
                            title: "SIGNUP",
                            onPress: () {
                              submit();
                            },
                            isLoading: formStateLoading,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    EcoButton(
                      isloginButton: false,
                      title: "Back to Login ",
                      onPress: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
