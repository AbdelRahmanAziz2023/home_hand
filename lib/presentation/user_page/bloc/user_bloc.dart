import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/user_page/models/user_model.dart';
part 'user_event.dart';
part 'user_state.dart';

/// A bloc that manages the state of a User according to the event that is dispatched to it.
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(UserState initialState) : super(initialState) {
    on<UserInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {}
}
