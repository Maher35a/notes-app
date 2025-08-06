import 'package:flutter/material.dart';

import 'Appbar_widget.dart';
import 'CustomButton.dart';
import 'Customtextfildwidget.dart';

class Bottomsheet  extends StatelessWidget {
  const Bottomsheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SingleChildScrollView(
        child: addsheet(),
      ),
    );
  }
}

class addsheet extends StatefulWidget {
  const addsheet({
    super.key,
  });

  @override
  State<addsheet> createState() => _addsheetState();
}

class _addsheetState extends State<addsheet> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppbar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 30),
          customtextfild(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(height: 20),

          customtextfild(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: 'add note here',
            maxLines: 5,
          ),
          SizedBox(height: 20),

          CustomButtonwidget(
            text: 'add',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),          SizedBox(height: 70),

        ],
      ),
    );
  }
}
