import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../models/note-model.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());
   addnote(NoteModel note)async{
     emit(AddnoteLoading());
    try{ var notesbox = Hive.box<NoteModel>('notes');
      emit(AddnoteSuccess());
      await notesbox.add(note);}
        on HiveError catch(e){
          emit(AddnoteFailure(e.toString()));
        }
  }
}
