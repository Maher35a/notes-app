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
      body: const Padding(
        padding: const EdgeInsets.all(16),
        child: addnoteform(),
      ),
    );
  }
}

class addnoteform extends StatefulWidget {
  const addnoteform({super.key});

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
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
          Spacer(flex: 2),
          customtextfild(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          Spacer(flex: 3),
          customtextfild(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: 'add note here',
            maxLines: 5,
          ),
          Spacer(flex: 5),
          CustomButtonwidget(

            text: 'add',
            isLoading: false,
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          Spacer(flex: 10),
        ],
      ),
    );
  }
}
