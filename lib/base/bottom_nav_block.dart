import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BottomNavEvent {}

class NavItemSelected extends BottomNavEvent {
  final int index;
  NavItemSelected(this.index);
}

abstract class BottomNavState {}

class BottomNavInitial extends BottomNavState {}

class BottomNavSelected extends BottomNavState {
  final int selectedIndex;
  BottomNavSelected(this.selectedIndex);
}

class BottomNavBlock extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBlock() : super(BottomNavInitial()) {
    on<NavItemSelected>((event, emit) {
      emit(BottomNavSelected(event.index));
    });
  }
}