// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusTenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusTen widget is first created.
class Iphone14PlusTenInitialEvent extends Iphone14PlusTenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends Iphone14PlusTenEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
