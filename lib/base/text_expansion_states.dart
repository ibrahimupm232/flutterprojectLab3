abstract class TextExpansionState {}

class TextExpansionInitial extends TextExpansionState {}

class TextExpansionToggled extends TextExpansionState {
  final bool isExpanded;
  TextExpansionToggled({required this.isExpanded});
}