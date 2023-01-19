import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'button.dart';

class Password extends StatelessWidget {
  String cp =
      'https://images.unsplash.com/photo-1607778914885-787b06728b07?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=773';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image(
              image: CachedNetworkImageProvider(cp),
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            SizedBox(
              height: 30,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 220,
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(205),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.5)),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "new password",
                          border: InputBorder.none,
                        ),
                        textInputAction: TextInputAction.next,
                        focusNode: FocusNode(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(205),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.5)),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "confirm password",
                          border: InputBorder.none,
                        ),
                        textInputAction: TextInputAction.next,
                        focusNode: FocusNode(),
                      ),
                    ),
                    SizedBox(
                      height: 50,
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
