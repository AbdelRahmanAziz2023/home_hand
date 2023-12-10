import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/user_page_container_screen/models/user_page_container_model.dart';
part 'user_page_container_event.dart';
part 'user_page_container_state.dart';

/// A bloc that manages the state of a UserPageContainer according to the event that is dispatched to it.
class UserPageContainerBloc
    extends Bloc<UserPageContainerEvent, UserPageContainerState> {
  UserPageContainerBloc(UserPageContainerState initialState)
      : super(initialState) {
    on<UserPageContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserPageContainerInitialEvent event,
    Emitter<UserPageContainerState> emit,
  ) async {}
}
