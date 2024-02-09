import 'package:aabdoo/constants.dart';
import 'package:aabdoo/cubit/add_note_cubit/add_note_state.dart';
import 'package:aabdoo/cubit/notes_cubit/notes_state.dart';
import 'package:aabdoo/models/note_model.dart';
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesCubitSuccess(notes: notes));
    } catch (e) {
      emit(NotesCubitFailure(errorMessage: e.toString()));
    }
  }
}
