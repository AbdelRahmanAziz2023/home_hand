// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusSixEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusSix widget is first created.
class Iphone14PlusSixInitialEvent extends Iphone14PlusSixEvent {
  @override
  List<Object?> get props => [];
}
