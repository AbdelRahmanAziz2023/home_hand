// ignore_for_file: must_be_immutable

part of 'splach_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Splach widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplachEvent extends Equatable {}

/// Event that is dispatched when the Splach widget is first created.
class SplachInitialEvent extends SplachEvent {
  @override
  List<Object?> get props => [];
}
