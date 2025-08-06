import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});
final String title ;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 12,right: 12,),
      child: Row(
        children: [
          Text (title, style: TextStyle(fontSize: 30)),
          Spacer(),
          Container(
            padding: EdgeInsets.all(2), // مسافة داخلية حول الأيقونة
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.08), // لون الخلفية
              borderRadius: BorderRadius.circular(12), // حواف دائرية// إطار حدود
            ),
            child: IconButton(
              onPressed: () {
                // نفذ شيء هنا
              },
              icon: Icon(icon, size: 25, color: Colors.white),
            ),
          )
        ]
      ),
    )
    ;
  }
}
