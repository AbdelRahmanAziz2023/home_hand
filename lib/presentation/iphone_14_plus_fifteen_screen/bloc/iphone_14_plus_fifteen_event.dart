// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusFifteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusFifteen widget is first created.
class Iphone14PlusFifteenInitialEvent extends Iphone14PlusFifteenEvent {
  @override
  List<Object?> get props => [];
}
