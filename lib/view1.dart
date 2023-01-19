import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:url_launcher/url_launcher.dart';

class View1 extends StatelessWidget {
  const View1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.withOpacity(0.9),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url =
                        'https://en.wikipedia.org/wiki/Abdul_Hafeez_Pirzada';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("1: Abdul Hafeez Pirzada"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url =
                        'https://en.wikipedia.org/wiki/Afrasiab_Khattak';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("2: Afrasiab Khattak"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url =
                        'https://en.wikipedia.org/wiki/Ghulam_Farooq_Awan';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("3: Ghulam Farooq Awan"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url = 'https://en.wikipedia.org/wiki/Aitzaz_Ahsan';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("4: Chaudhry Aitzaz Ahsan"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url = 'https://en.wikipedia.org/wiki/Ali_Ahmad_Kurd';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("5: Ali Ahmad Kurd"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url = 'https://en.wikipedia.org/wiki/Asma_Jahangir';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("6 Asma Jilani Jahangir"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url =
                        'https://en.wikipedia.org/wiki/Ashtar_Ausaf_Ali';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("7: Ashtar Ausaf Ali"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url = 'https://en.wikipedia.org/wiki/Barjees_Tahir';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("8: Chaudhry Muhammad Barjees"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url = 'https://en.wikipedia.org/wiki/Ahmad_Awais';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("9: Ahmad Awais"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url =
                        'https://en.wikipedia.org/wiki/Chaudhry_Amir_Hussain';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("10: Chaudhry Amir Hussain"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  onPressed: () async {
                    final url = 'https://en.wikipedia.org/wiki/Babar_Awan';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceSafariVC: false,
                      );
                    }
                  },
                  child: Text("11: Zaheer-ud-din Babar Awan"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
