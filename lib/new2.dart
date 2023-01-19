import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class New2 extends StatefulWidget {
  @override
  State<New2> createState() => _New2State();
}

String ep =
    'https://media.istockphoto.com/photos/gavel-picture-id174197278?b=1&k=20&m=174197278&s=170667a&w=0&h=7V2qMpw9qLT_NZJ_xytl0Q8xxT0S1_OAt_YPE6ZYVv8=';
String wp =
    'https://media.istockphoto.com/photos/gavel-and-justice-scale-picture-id1294453859?b=1&k=20&m=1294453859&s=170667a&w=0&h=z0QjssxChntu-RgAKOS6O7OZZZ8gpH-h8ZsOAzASROI=';

class _New2State extends State<New2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue.withOpacity(0.5),
          title: Text(
            "Cases",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(tabs: [
            Tab(text: 'Dewani', icon: Icon(Icons.cases_outlined)),
            Tab(text: 'Foujdari', icon: Icon(Icons.cases_rounded)),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Stack(
              children: [
                Image(
                  image: CachedNetworkImageProvider(ep),
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Center(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "There are two types of Courts in Pakistan the superior (or higher) courts and subordinate (or lower) courts. The superior courts are composed of the Supreme court of Pakistan, the Federal Shariat Court, and the Five High Court. \n There is a high court for a Province as well as the High Court for the Islamabad capital.\n \n Diwani adalat is generally termed as the Civil Court.They normally hear the cases relating to civil disputes which normally arise in the district courts\nDiwani court is a civil court,Diwani court decides civil cases\nDiwani court gives compensation, ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Image(
                  image: CachedNetworkImageProvider(wp),
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Center(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "There are two types of Courts in Pakistan the superior (or higher) courts and subordinate (or lower) courts. The superior courts are composed of the Supreme court of Pakistan, the Federal Shariat Court, and the Five High Court. \n There is a high court for a Province as well as the High Court for the Islamabad capital.\n \n Fojdari adalat was basically a criminal court criminal cort were under the control of qajis,they were functioning under the supervision of the european officers.  ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
