import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_ten_screen/models/iphone_14_plus_ten_model.dart';
part 'iphone_14_plus_ten_event.dart';
part 'iphone_14_plus_ten_state.dart';

/// A bloc that manages the state of a Iphone14PlusTen according to the event that is dispatched to it.
class Iphone14PlusTenBloc
    extends Bloc<Iphone14PlusTenEvent, Iphone14PlusTenState> {
  Iphone14PlusTenBloc(Iphone14PlusTenState initialState) : super(initialState) {
    on<Iphone14PlusTenInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<Iphone14PlusTenState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    Iphone14PlusTenInitialEvent event,
    Emitter<Iphone14PlusTenState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        firstNameController: TextEditingController(),
        passwordController: TextEditingController(),
        listofServicesController: TextEditingController(),
        isShowPassword: true));
  }
}
