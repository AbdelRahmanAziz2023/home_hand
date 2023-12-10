import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_nine_screen/models/iphone_14_plus_nine_model.dart';
part 'iphone_14_plus_nine_event.dart';
part 'iphone_14_plus_nine_state.dart';

/// A bloc that manages the state of a Iphone14PlusNine according to the event that is dispatched to it.
class Iphone14PlusNineBloc
    extends Bloc<Iphone14PlusNineEvent, Iphone14PlusNineState> {
  Iphone14PlusNineBloc(Iphone14PlusNineState initialState)
      : super(initialState) {
    on<Iphone14PlusNineInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<Iphone14PlusNineState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    Iphone14PlusNineInitialEvent event,
    Emitter<Iphone14PlusNineState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      firstNameController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
