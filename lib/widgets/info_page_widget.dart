

import 'package:flutter/material.dart';

class InfoPageWidget extends StatelessWidget {
  const InfoPageWidget({
    super.key, required this.infIcon, required this.iconColors, required this.firstText, required this.firstTextColors, required this.secondtText,
  });
final  IconData infIcon;
final Color iconColors;
final String firstText;
final Color firstTextColors;
final String secondtText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          const SizedBox(width: 15,),
          Icon(infIcon,color: iconColors,size: 40,),
         const SizedBox(width: 5,),
          Text(firstText,style: TextStyle(color: firstTextColors,fontWeight: FontWeight.bold,fontSize: 18),),
         const SizedBox(width: 5,),
          Text(secondtText,style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12)),
        ],
      ),
    );
  }
}