import 'package:aabdoo/models/note_model.dart';
import 'package:aabdoo/widgets/edit_note_view_body.dart';
import 'package:flutter/material.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(note: note),
    );
  }
}
