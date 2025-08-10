import 'package:flutter/material.dart';

import '../constant/constans.dart';

class CustomButtonwidget extends StatelessWidget {
   CustomButtonwidget({super.key,required this.text, this.onTap,  this.isLoading =false });
  final String text ;
   final void Function()? onTap;
   bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container (
        width: double.infinity,
        height:40,
        child: Center(child:
          isLoading ? SizedBox(
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ) :
        Text(text, style: TextStyle(color: Colors.black, fontSize: 20))),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Kprimarycolor,
        )
      ),
    );
  }
}
