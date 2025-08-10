import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/addnote_cubit.dart';
import '../../models/note-model.dart';
import 'BottomSheetwidget.dart';
import 'CustomButton.dart';
import 'Customtextfildwidget.dart';
import '';
class addsheet extends StatefulWidget {
  const addsheet({super.key});

  @override
  State<addsheet> createState() => addsheetState();
}

class addsheetState extends State<addsheet> {
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
          SizedBox(height: 40),
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

          BlocBuilder<AddnoteCubit, AddnoteState>(
            builder: (context, state) {
              return CustomButtonwidget(
                text: 'add',
                isLoading: state is AddnoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var notemodel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.red.value,
                    );
                    BlocProvider.of<AddnoteCubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
