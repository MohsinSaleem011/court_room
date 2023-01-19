import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Casedetail2 extends StatelessWidget {
  const Casedetail2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.withOpacity(0.5),
        title: Text(
          "Page 2",
          style: TextStyle(
              color: Colors.yellow, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 55,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.5),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "Case # 1",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    MaterialButton(
                        child: Icon(Icons.arrow_forward), onPressed: () {}),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 230,
              width: 335,
              color: Colors.grey.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Title",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 98,
                        ),
                        Text(
                          "Hammad and Co \n VS \n Saim Hassan Senitor Pakistan",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Writ. Private Government \n Mislaneous",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Row(
                      children: [
                        Text(
                          "Institution Date",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Thursday, 18-June-2019",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 230,
              width: 335,
              color: Colors.grey.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Fixed For",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 98,
                        ),
                        Text(
                          "Thursday, 18-June-2020",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Serial #",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          "10",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Row(
                      children: [
                        Text(
                          "Court",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          "Chief Justice Block- Court 5",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Bench",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          "The Chief Justice",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 55,
              width: 335,
              color: Colors.grey.withOpacity(0.2),
              child: Row(
                children: [
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Advocate",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 77,
                  ),
                  Text(
                    "Mr. Muhammad Ahsan Khan",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
