// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusSevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusSeven widget is first created.
class Iphone14PlusSevenInitialEvent extends Iphone14PlusSevenEvent {
  @override
  List<Object?> get props => [];
}
