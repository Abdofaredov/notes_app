import 'package:aabdoo/cubit/notes_cubit/notes_cubit.dart';
import 'package:aabdoo/cubit/notes_cubit/notes_state.dart';
import 'package:aabdoo/models/note_model.dart';
import 'package:aabdoo/widgets/note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => NoteItem(note: notes[index]),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
