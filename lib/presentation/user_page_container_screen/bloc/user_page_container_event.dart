// ignore_for_file: must_be_immutable

part of 'user_page_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserPageContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserPageContainerEvent extends Equatable {}

/// Event that is dispatched when the UserPageContainer widget is first created.
class UserPageContainerInitialEvent extends UserPageContainerEvent {
  @override
  List<Object?> get props => [];
}
