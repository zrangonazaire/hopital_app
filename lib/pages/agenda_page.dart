import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text(""),
      ),
      body:    SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InfoPageWidget(
                firstText: "Agenda",
                firstTextColors: Colors.black,
                iconColors: Colors.black,
                infIcon: Icons.calendar_month,
                secondtText: "Rendez-vous",
              ),
              SizedBox(
                height: 1000,
                child: MyTabs())
             ],
          ),
        ),
      ),
    );
    
  }
}
