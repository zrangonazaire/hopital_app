import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hopital_app/widgets/widgets.dart';

class MyTabs extends StatelessWidget {
   MyTabs({super.key});
  final DataTableSource _data = MyDataTable();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Nombre d'onglets
      child: Column(
        children: [
          const TabBar(
            tabs: [
              InfoPageWidget(
                firstText: "Liste des rendez-vous",
                firstTextColors: Colors.black,
                iconColors: Colors.black,
                infIcon: Icons.list,
                secondtText: "",
              ),
              InfoPageWidget(
                firstText: "Agenda",
                firstTextColors: Colors.black,
                iconColors: Colors.black,
                infIcon: Icons.calendar_month,
                secondtText: "",
              ),
            ],
          ),
          // Espace entre la TabBar et TabBarView
          const SizedBox(height: 20),
          Expanded(
            child: TabBarView(
              children: [
                // Contenu de l'onglet 1
                PaginatedDataTable(columns: const [
                  DataColumn(label: Text("Patient")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Détail")),
                ], 
                columnSpacing: 100,
                horizontalMargin: 60,
                rowsPerPage: 8,
                source: _data,header: const Center(child: Text("List des rendez-vous"),),),
                // Contenu de l'onglet 2
                Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text('Contenu de l\'onglet 2'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyDataTable extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "Id": index,
            "title": "Item $index",
            "date": Random().nextInt(10000)
          });
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]["Id"].toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["date"].toString())),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => true;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
