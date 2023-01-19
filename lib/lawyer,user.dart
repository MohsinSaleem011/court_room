import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstScreen extends StatelessWidget {
  String dp =
      'https://images.unsplash.com/photo-1589578527966-fdac0f44566c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y291cnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Image(
            image: CachedNetworkImageProvider(dp),
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(86, 150, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        "I'm a Lawyer",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        "I'm a Client",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
