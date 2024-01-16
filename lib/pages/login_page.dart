import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hopital"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ClipOval(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                      image: AssetImage(
                        'assets/images/hopital.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent.withOpacity(0.1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Se connecter",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const TextFieldWidget(
                          hText: "Téléphone",
                          surIcon: Icons.phone,
                        ),
                        const TextFieldWidget(
                          hText: "Mot de passe",
                          surIcon: Icons.lock,
                        ),
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/home");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(5), // <-- Radius
                              ),
                            ),
                            child: const Text(
                              "Connexion",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Mot de passe oublié ?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
             
              child: Image(fit: BoxFit.cover,
              width: 400,
                  image: AssetImage(
                'assets/images/hopitallogo.png',

              )),
            )
          ],
        )),
      ),
    );
  }
}
