import 'package:aabdoo/models/note_model.dart';

abstract class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}

class NotesCubitLoading extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSuccess({required this.notes});
}

class NotesCubitFailure extends NotesCubitState {
  final String errorMessage;

  NotesCubitFailure({required this.errorMessage});
}
