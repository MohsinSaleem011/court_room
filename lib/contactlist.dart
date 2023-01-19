import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: 0,
            sortAscending: true,
            columns: [
              DataColumn(
                label: Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  "Contact #",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                numeric: true,
              ),
            ],
            rows: [
              DataRow(selected: true, cells: [
                DataCell(Text("Tanveer Amjad"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0321-2786511")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Saiduddin & co"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("021-35313586")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Tauqeer Tanseer"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0335-5127213")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Saleem Law"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0306-2300820")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Bugo Law"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0333-3272365")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Rhinoplasty"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0332-5488777")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Tanveer Amjad"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0321-2786511")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Traders"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0320-4172818")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Tax Diagnostics"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0322-9393625")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Sohaib ans Sultan"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0321-8422258")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Ghazi Enterprises"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0333-2297679")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("jawed Ijaz"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0331-2050999")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Shah Law"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0333-3215028")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Court Marriage Counsultancy"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0322-1809178")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("Court Marriage Karachi"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("0331-3365257")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(Text("S M Associates"),
                    showEditIcon: true, placeholder: true),
                DataCell(Text("03450942288")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(
                  Text("RBS Law Associates"),
                  showEditIcon: true,
                ),
                DataCell(Text("042-3736277")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(
                  Text("Ask Online Lawyers"),
                  showEditIcon: true,
                ),
                DataCell(Text("0331-1110056")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(
                  Text("Court Marriage Divorce"),
                  showEditIcon: true,
                ),
                DataCell(Text("0306-9004167")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(
                  Text("AKW Law Associates"),
                  showEditIcon: true,
                ),
                DataCell(Text("0321-8877911")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(
                  Text("EHA Consultant"),
                  showEditIcon: true,
                ),
                DataCell(Text("0333-3861937")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(
                  Text("24 Justice.pk"),
                  showEditIcon: true,
                ),
                DataCell(Text("0308-5510031")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(
                  Text("Muhamma Anees"),
                  showEditIcon: true,
                ),
                DataCell(Text("0300-6699012")),
              ]),
              DataRow(selected: true, cells: [
                DataCell(
                  Text("Afshan Jamal"),
                  showEditIcon: true,
                ),
                DataCell(Text("0331-2261255")),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
