import 'package:flutter_bloc/flutter_bloc.dart';

abstract class TextExpansionEvent {}

class ToggleExpansion extends TextExpansionEvent {}

class TextExpansionState {
  final bool isExpanded;
  TextExpansionState(this.isExpanded);
}

class TextExpansionBlock extends Bloc<TextExpansionEvent, TextExpansionState> {
  TextExpansionBlock() : super(TextExpansionState(false)) {
    on<ToggleExpansion>((event, emit) {
      emit(TextExpansionState(!state.isExpanded));
    });
  }
}