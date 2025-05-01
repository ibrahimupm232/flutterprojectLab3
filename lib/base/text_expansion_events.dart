abstract class TextExpansionEvent {}

class ToggleTextExpansionEvent extends TextExpansionEvent {
  final bool currentState;
  ToggleTextExpansionEvent({required this.currentState});
}