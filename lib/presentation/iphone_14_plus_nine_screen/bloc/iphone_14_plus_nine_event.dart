// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusNineEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusNine widget is first created.
class Iphone14PlusNineInitialEvent extends Iphone14PlusNineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends Iphone14PlusNineEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
