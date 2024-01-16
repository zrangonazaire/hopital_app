

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key, required this.hText, required this.surIcon,
  });
final String hText;
final IconData surIcon;
  @override
  Widget build(BuildContext context) {
    
    return TextField(
      decoration: InputDecoration(
        hintText: hText,
        fillColor: Colors.white,
        filled: true,
        suffixIcon: Icon(surIcon),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,color: Colors.orange
                      
          )
        )
      ),
    );
  }
}
