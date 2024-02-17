import 'package:aabdoo/cubit/notes_cubit/notes_cubit.dart';
import 'package:aabdoo/models/note_model.dart';
import 'package:aabdoo/widgets/custom_app_bar.dart';
import 'package:aabdoo/widgets/custom_text_field.dart';
import 'package:aabdoo/widgets/edit_note_colors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();

              Navigator.pop(context);

              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.content,
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          EditNotesColorsList(note: widget.note),
        ],
      ),
    );
  }
}
