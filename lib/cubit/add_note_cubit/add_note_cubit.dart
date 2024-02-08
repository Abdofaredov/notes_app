import 'package:aabdoo/cubit/add_note_cubit/add_note_state.dart';
import 'package:bloc/bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
}
