import 'package:flutter/material.dart';

import 'note-view-container.dart';

class scrollview extends StatelessWidget {
  const scrollview ({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) =>  noteViewContainer(),
      ),
    );
  }
}
