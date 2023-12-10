// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusSixteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusSixteen widget is first created.
class Iphone14PlusSixteenInitialEvent extends Iphone14PlusSixteenEvent {
  @override
  List<Object?> get props => [];
}
