import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_five_screen/models/iphone_14_plus_five_model.dart';
part 'iphone_14_plus_five_event.dart';
part 'iphone_14_plus_five_state.dart';

/// A bloc that manages the state of a Iphone14PlusFive according to the event that is dispatched to it.
class Iphone14PlusFiveBloc
    extends Bloc<Iphone14PlusFiveEvent, Iphone14PlusFiveState> {
  Iphone14PlusFiveBloc(Iphone14PlusFiveState initialState)
      : super(initialState) {
    on<Iphone14PlusFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14PlusFiveInitialEvent event,
    Emitter<Iphone14PlusFiveState> emit,
  ) async {}
}
