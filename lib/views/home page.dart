import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/Appbar_widget.dart';
import 'package:notesapp/views/widgets/BottomSheetwidget.dart';
import 'package:notesapp/views/widgets/scrollview.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: const Column(children: [CustomAppbar(
        title: 'Notes',
        icon: Icons.search,
      ), Expanded(child: scrollview())])),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              context: context, builder:(
          context){
            return Bottomsheet();
          }

          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
