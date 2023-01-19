import 'package:flutter/material.dart';

import 'Caseetail2.dart';

class New3 extends StatelessWidget {
  const New3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.headphones)],
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.blue.withOpacity(0.5),
        title: Text(
          "Case Details",
          style: TextStyle(
              color: Colors.yellow, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
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
                      child: Icon(Icons.arrow_forward),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return Casedetail2();
                        }));
                      }),
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
                        "Mohsin and Co \n VS \n Aqib Javed Senitor Pakistan",
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
                        "Writ. Local Government \n Mislaneous",
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
                        "Thursday, 12-October-2017",
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
                        "Thursday, 12-October-2018",
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
                        "5",
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
                        "Chief Justice Block- Court 1",
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
    );
  }
}
