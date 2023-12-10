// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusElevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusEleven widget is first created.
class Iphone14PlusElevenInitialEvent extends Iphone14PlusElevenEvent {
  @override
  List<Object?> get props => [];
}
