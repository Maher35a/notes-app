import 'package:flutter/material.dart';

import 'Appbar_widget.dart';
import 'BottomSheetwidget.dart';
import 'CustomButton.dart';
import 'Customtextfildwidget.dart';

class editnotewidget extends StatelessWidget {
  const editnotewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppbar(title:'Edit Note', icon: Icons.check),
            Spacer(flex: 2),
            customtextfild(hintText: 'Title'),
            Spacer(flex: 3),
            customtextfild(hintText: 'add note here', maxLines: 5),
            Spacer(flex: 5),
            CustomButtonwidget(),
            Spacer(flex : 10),
          ],
        ),
      ),
    );
  }
}
