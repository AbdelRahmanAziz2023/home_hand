// ignore_for_file: must_be_immutable

part of 'order_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderPageEvent extends Equatable {}

/// Event that is dispatched when the OrderPage widget is first created.
class OrderPageInitialEvent extends OrderPageEvent {
  @override
  List<Object?> get props => [];
}
