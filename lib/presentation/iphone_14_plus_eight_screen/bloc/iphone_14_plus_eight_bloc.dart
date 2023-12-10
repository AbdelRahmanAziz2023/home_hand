import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_eight_screen/models/iphone_14_plus_eight_model.dart';
part 'iphone_14_plus_eight_event.dart';
part 'iphone_14_plus_eight_state.dart';

/// A bloc that manages the state of a Iphone14PlusEight according to the event that is dispatched to it.
class Iphone14PlusEightBloc
    extends Bloc<Iphone14PlusEightEvent, Iphone14PlusEightState> {
  Iphone14PlusEightBloc(Iphone14PlusEightState initialState)
      : super(initialState) {
    on<Iphone14PlusEightInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<Iphone14PlusEightState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    Iphone14PlusEightInitialEvent event,
    Emitter<Iphone14PlusEightState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      firstNameController: TextEditingController(),
      passwordController: TextEditingController(),
      listofServicesController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
