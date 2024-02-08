import 'package:aabdoo/constants.dart';
import 'package:aabdoo/cubit/add_note_cubit/add_note_state.dart';
import 'package:aabdoo/models/note_model.dart';
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;

  addNote(NoteModel note) async {
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      emit(AddNoteSuccess());

      await notesBox.add(note);
    } catch (e) {
      AddNoteFaliure(errorMessage: e.toString());
    }
  }
}
