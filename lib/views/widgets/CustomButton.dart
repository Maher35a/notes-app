import 'package:flutter/material.dart';

import '../constant/constans.dart';

class CustomButtonwidget extends StatelessWidget {
   CustomButtonwidget({super.key, this.text='Add'});
  String text = 'Add';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container (
        width: double.infinity,
        height:40,
        child: Center(child: Text(text, style: TextStyle(color: Colors.black, fontSize: 20))),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Kprimarycolor,
        )
      ),
    );
  }
}
