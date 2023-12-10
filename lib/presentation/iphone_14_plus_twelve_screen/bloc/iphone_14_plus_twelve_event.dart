// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14PlusTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14PlusTwelveEvent extends Equatable {}

/// Event that is dispatched when the Iphone14PlusTwelve widget is first created.
class Iphone14PlusTwelveInitialEvent extends Iphone14PlusTwelveEvent {
  @override
  List<Object?> get props => [];
}
