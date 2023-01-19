import 'package:cached_network_image/cached_network_image.dart';
import 'package:court_room/search1.dart';
import 'package:court_room/view1.dart';
import 'package:flutter/material.dart';

import 'appointment.dart';

class LawyerHier extends StatefulWidget {
  @override
  State<LawyerHier> createState() => _LawyerHierState();
}

class _LawyerHierState extends State<LawyerHier> {
  String ip =
      'https://media.istockphoto.com/vectors/justice-law-icon-design-law-firm-icon-design-attorney-icon-vector-id1093813080?k=20&m=1093813080&s=612x612&w=0&h=9k_VHtC0gmv2KTle7HCnw4PmLTUWR4TyybFP1_AcOQ0=';
  String gp =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNdDFBtsVgDt3G9Ywl2xpBgywQWWh3awLvbQsxoFIr7RdLvdIfxcvLgH7bsCxPZaLVWM4&usqp=CAU';
  String ep =
      'https://i.pinimg.com/736x/fa/0e/7b/fa0e7b992eff03c576727e95c746005c.jpg';
  String pe =
      'https://png.pngtree.com/element_our/png_detail/20181114/business-deadline-icon-png_239815.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 50, 20, 0),
            child: Container(
              height: 250,
              width: 330,
              child: Image(
                image: CachedNetworkImageProvider(ip),
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 120,
                  child: Column(
                    children: [
                      Image(
                        image: CachedNetworkImageProvider(gp),
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return View1();
                          }));
                        },
                        child: Text(
                          "View Profile",
                          style: TextStyle(color: Colors.pink),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 150,
                  width: 120,
                  child: Column(
                    children: [
                      Image(
                        image: CachedNetworkImageProvider(ep),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return Search1();
                          }));
                        },
                        child: Text(
                          "Search Lawyer",
                          style: TextStyle(color: Colors.pink),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130, 20, 0, 0),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 120,
                  child: Column(
                    children: [
                      Image(
                        image: CachedNetworkImageProvider(pe),
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return Appointment1();
                          }));
                        },
                        child: Text(
                          "Appointment",
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
