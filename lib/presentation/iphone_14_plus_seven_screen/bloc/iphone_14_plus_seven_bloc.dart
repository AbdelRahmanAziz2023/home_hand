import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_seven_screen/models/iphone_14_plus_seven_model.dart';
part 'iphone_14_plus_seven_event.dart';
part 'iphone_14_plus_seven_state.dart';

/// A bloc that manages the state of a Iphone14PlusSeven according to the event that is dispatched to it.
class Iphone14PlusSevenBloc
    extends Bloc<Iphone14PlusSevenEvent, Iphone14PlusSevenState> {
  Iphone14PlusSevenBloc(Iphone14PlusSevenState initialState)
      : super(initialState) {
    on<Iphone14PlusSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14PlusSevenInitialEvent event,
    Emitter<Iphone14PlusSevenState> emit,
  ) async {}
}
