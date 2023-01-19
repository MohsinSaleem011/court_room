import 'package:flutter/material.dart';

class Search1 extends StatefulWidget {
  const Search1({Key? key}) : super(key: key);

  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: Text(
            "Search Bot",
            style: TextStyle(fontSize: 60, color: Colors.cyanAccent),
          ),
        ),
        Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Search",
              border: InputBorder.none,
            ),
            onFieldSubmitted: (name) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Image.network('https://unsplash.com//${name}');
                  });
            },
          ),
        ),
      ]),
    );
  }
}
