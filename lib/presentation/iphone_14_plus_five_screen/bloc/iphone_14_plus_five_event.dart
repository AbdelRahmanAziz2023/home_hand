// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusFiveEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusFive widget is first created.
class Iphone14PlusFiveInitialEvent extends Iphone14PlusFiveEvent {
  @override
  List<Object?> get props => [];
}
