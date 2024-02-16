import 'package:aabdoo/cubit/notes_cubit/notes_state.dart';
import 'package:aabdoo/models/note_model.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
