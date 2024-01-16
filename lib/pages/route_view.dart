import 'package:flutter/material.dart';


import 'page.dart';

class RouteView extends StatelessWidget {
  const RouteView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hopital",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        color: Color(0xFF151026),
      )),
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/agenda": (context) => const AgendaPage(),
      },
      initialRoute: "/",
    );
  }
}
