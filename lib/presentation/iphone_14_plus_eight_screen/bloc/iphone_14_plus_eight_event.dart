// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusEightEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusEight widget is first created.
class Iphone14PlusEightInitialEvent extends Iphone14PlusEightEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends Iphone14PlusEightEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
