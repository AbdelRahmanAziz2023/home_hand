// ignore_for_file: must_be_immutable

part of 'user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///User widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserEvent extends Equatable {}

/// Event that is dispatched when the User widget is first created.
class UserInitialEvent extends UserEvent {
  @override
  List<Object?> get props => [];
}
