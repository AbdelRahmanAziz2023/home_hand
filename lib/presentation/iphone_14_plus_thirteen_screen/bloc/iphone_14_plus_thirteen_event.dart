// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusThirteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusThirteen widget is first created.
class Iphone14PlusThirteenInitialEvent extends Iphone14PlusThirteenEvent {
  @override
  List<Object?> get props => [];
}
