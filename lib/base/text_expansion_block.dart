import 'package:flutter_bloc/flutter_bloc.dart';

abstract class TextExpansionEvent {}

class ToggleExpansion extends TextExpansionEvent {}

abstract class TextExpansionState {}

class TextExpansionInitial extends TextExpansionState {
  final bool isExpanded;
  TextExpansionInitial({this.isExpanded = false});
}

class TextExpansionBlock extends Bloc<TextExpansionEvent, TextExpansionState> {
  TextExpansionBlock() : super(TextExpansionInitial()) {
    on<ToggleExpansion>((event, emit) {
      final currentState = state as TextExpansionInitial;
      emit(TextExpansionInitial(isExpanded: !currentState.isExpanded));
    });
  }
}