import 'package:aabdoo/widgets/custom_note_item.dart';
import 'package:flutter/material.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const NoteItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: 10,
    );
  }
}
