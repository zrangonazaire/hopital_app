import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text(""),
        
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InfoPageWidget(
                firstText: "Bienvenue sur Hopital",
                firstTextColors: Colors.red,
                iconColors: Colors.red,
                infIcon: Icons.home_filled,
                secondtText: "votre logiciel de gestion de patients",
              ),
              Row(
                children: [
                   const SizedBox(
                height: 20,
              ),
              InfoBoxWidget(firstColor: Colors.blue.shade400,firtText: "Agenda",secondColor: Colors.blueAccent,),
             const SizedBox(width: 10,),
             InfoBoxWidget(firstColor: Colors.orange.shade400,firtText: "Ajouter un patient",secondColor: Colors.deepOrange,),
            
                ],
              )
             ],
          ),
        ),
      ),
    );
  }
}
