import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_fifteen_screen/models/iphone_14_plus_fifteen_model.dart';
part 'iphone_14_plus_fifteen_event.dart';
part 'iphone_14_plus_fifteen_state.dart';

/// A bloc that manages the state of a Iphone14PlusFifteen according to the event that is dispatched to it.
class Iphone14PlusFifteenBloc
    extends Bloc<Iphone14PlusFifteenEvent, Iphone14PlusFifteenState> {
  Iphone14PlusFifteenBloc(Iphone14PlusFifteenState initialState)
      : super(initialState) {
    on<Iphone14PlusFifteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14PlusFifteenInitialEvent event,
    Emitter<Iphone14PlusFifteenState> emit,
  ) async {}
}
