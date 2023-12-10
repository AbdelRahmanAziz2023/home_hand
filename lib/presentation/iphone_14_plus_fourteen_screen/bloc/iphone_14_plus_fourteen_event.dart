// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusFourteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusFourteen widget is first created.
class Iphone14PlusFourteenInitialEvent extends Iphone14PlusFourteenEvent {
  @override
  List<Object?> get props => [];
}
