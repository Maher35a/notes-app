import 'package:flutter/material.dart';

import '../editnoteview.dart';

class noteViewContainer extends StatelessWidget {
  const noteViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10, left:12 , right: 12),
      child: GestureDetector(
        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => editnoteview()));
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffF5DEB3),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:20,bottom: 20),
            child: ListTile(
              title: Text(
                'flutter tips',
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
              subtitle: Text(
                'build your career With Maher',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              trailing: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.delete, color: Colors.black, size: 28),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20 ), // مسافة بسيطة
                  Expanded(
                    child: Text(
                      '5 Aug',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                ],
              ),

            ),
          ),
        ),
      ),
    )
    ;
  }
}
