import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_thirteen_screen/models/iphone_14_plus_thirteen_model.dart';
part 'iphone_14_plus_thirteen_event.dart';
part 'iphone_14_plus_thirteen_state.dart';

/// A bloc that manages the state of a Iphone14PlusThirteen according to the event that is dispatched to it.
class Iphone14PlusThirteenBloc
    extends Bloc<Iphone14PlusThirteenEvent, Iphone14PlusThirteenState> {
  Iphone14PlusThirteenBloc(Iphone14PlusThirteenState initialState)
      : super(initialState) {
    on<Iphone14PlusThirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14PlusThirteenInitialEvent event,
    Emitter<Iphone14PlusThirteenState> emit,
  ) async {}
}
