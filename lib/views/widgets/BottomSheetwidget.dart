import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'Customtextfildwidget.dart';

class Bottomsheet  extends StatelessWidget {
  const Bottomsheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30),
            customtextfild( hintText: 'Title'),
            SizedBox(height: 50),
            customtextfild( hintText: 'add note here',maxLines: 5),
            SizedBox(height: 50),
            CustomButtonwidget(),
            SizedBox(height: 100),
        
          ]
        ),
      ),
    );
  }
}
