import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/addnote_cubit.dart';
import 'addNotesheet.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class Bottomsheet extends StatelessWidget {
    Bottomsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddnoteCubit, AddnoteState>(
          listener: (context, state) {
            if (state is AddnoteFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errormassage),
                  backgroundColor: Colors.red ));}
            if (state is AddnoteSuccess) {
              Navigator.pop(context);
            }
            },
          builder: (context, state) {
            return  ModalProgressHUD(
                inAsyncCall: state is AddnoteLoading ? true : false,
                child: addsheet());
          },
        ),
      ),
    );
  }
}
