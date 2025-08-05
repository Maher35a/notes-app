import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/Appbar_widget.dart';
import 'package:notesapp/views/widgets/note-view-container.dart';
import 'package:notesapp/views/widgets/scrollview.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(children: [CustomAppbar(), Expanded(child: scrollview())]),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder:(
          context){
            return noteViewContainer();
          }

          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
