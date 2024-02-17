import 'package:aabdoo/constants.dart';
import 'package:aabdoo/cubit/add_note_cubit/add_note_state.dart';
import 'package:aabdoo/models/note_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  Color? color = const Color(0xffBBD8B3);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaliure(errorMessage: e.toString()));
    }
  }
}
