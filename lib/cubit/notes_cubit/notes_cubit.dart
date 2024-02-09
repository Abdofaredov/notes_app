import 'package:aabdoo/cubit/notes_cubit/notes_state.dart';
import 'package:bloc/bloc.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
}
