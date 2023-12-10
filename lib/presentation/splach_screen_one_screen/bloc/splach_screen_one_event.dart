// ignore_for_file: must_be_immutable

part of 'splach_screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplachScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplachScreenOneEvent extends Equatable {}

/// Event that is dispatched when the SplachScreenOne widget is first created.
class SplachScreenOneInitialEvent extends SplachScreenOneEvent {
  @override
  List<Object?> get props => [];
}
