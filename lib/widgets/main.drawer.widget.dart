import 'package:flutter/material.dart';

import 'widgets.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> menu = [
      {
        "title": "Accueil",
        "route": "/home",
        "leadingIcon": Icons.home,
        "trailingIcon": Icons.arrow_forward
      },
      {
        "title": "Agenda",
        "route": "/agenda",
        "leadingIcon": Icons.event,
        "trailingIcon": Icons.arrow_forward
      },
      {
        "title": "Patients",
        "route": "/patient",
        "leadingIcon": Icons.person_search,
        "trailingIcon": Icons.arrow_forward
      },
      {
        "title": "Consultations",
        "route": "/users",
        "leadingIcon": Icons.person,
        "trailingIcon": Icons.arrow_forward
      },
      {
        "title": "Statistiques",
        "route": "/statistique",
        "leadingIcon": Icons.percent_outlined,
        "trailingIcon": Icons.arrow_forward
      }
    ];
    return Drawer(
      child: Column(
        children: [
          const MainDrawerHeader(),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return DrawerItemWidget(
                      title: menu[index]["title"],
                      leadingIcon: menu[index]["leadingIcon"],
                      trailingIcon: menu[index]["trailingIcon"],
                      onAction: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, menu[index]['route']);
                      });
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 6,
                  );
                },
                itemCount: menu.length),
          )
        ],
      ),
    );
  }
}
