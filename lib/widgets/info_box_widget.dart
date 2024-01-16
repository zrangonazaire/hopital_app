

import 'package:flutter/material.dart';

class InfoBoxWidget extends StatelessWidget {
  const InfoBoxWidget({
    super.key, required this.firtText, required this.firstColor, required this.secondColor,
  });
final String firtText;
final Color firstColor;
final Color secondColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400,
      decoration: BoxDecoration(
          color: firstColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
             firtText,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            height: 30,
            decoration:  BoxDecoration(
                color: secondColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18))),
            child: const Center(
              child: Text(
                "Entrer",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
