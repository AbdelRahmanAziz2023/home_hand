import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_sixteen_screen/models/iphone_14_plus_sixteen_model.dart';
part 'iphone_14_plus_sixteen_event.dart';
part 'iphone_14_plus_sixteen_state.dart';

/// A bloc that manages the state of a Iphone14PlusSixteen according to the event that is dispatched to it.
class Iphone14PlusSixteenBloc
    extends Bloc<Iphone14PlusSixteenEvent, Iphone14PlusSixteenState> {
  Iphone14PlusSixteenBloc(Iphone14PlusSixteenState initialState)
      : super(initialState) {
    on<Iphone14PlusSixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14PlusSixteenInitialEvent event,
    Emitter<Iphone14PlusSixteenState> emit,
  ) async {}
}
