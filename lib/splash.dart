import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:court_room/loginpage.dart';
import 'package:flutter/material.dart';

class Court extends StatefulWidget {
  @override
  State<Court> createState() => _CourtState();
}

String img =
    'https://images.unsplash.com/photo-1583161852782-6059c4462a26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y291cnQlMjByb29tfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60';

class _CourtState extends State<Court> {
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: AnimatedSplashScreen(
          duration: 3000,
          splash: Image(
            image: CachedNetworkImageProvider(
              img,
            ),
            height: s.height,
            width: s.width,
            fit: BoxFit.fill,
          ),
          nextScreen: LoginPage(),
          splashIconSize: double.maxFinite,
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
