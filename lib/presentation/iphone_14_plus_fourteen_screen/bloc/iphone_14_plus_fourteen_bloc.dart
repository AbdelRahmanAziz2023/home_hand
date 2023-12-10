import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_fourteen_screen/models/iphone_14_plus_fourteen_model.dart';
part 'iphone_14_plus_fourteen_event.dart';
part 'iphone_14_plus_fourteen_state.dart';

/// A bloc that manages the state of a Iphone14PlusFourteen according to the event that is dispatched to it.
class Iphone14PlusFourteenBloc
    extends Bloc<Iphone14PlusFourteenEvent, Iphone14PlusFourteenState> {
  Iphone14PlusFourteenBloc(Iphone14PlusFourteenState initialState)
      : super(initialState) {
    on<Iphone14PlusFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14PlusFourteenInitialEvent event,
    Emitter<Iphone14PlusFourteenState> emit,
  ) async {
    emit(state.copyWith(fiftySevenController: TextEditingController()));
  }
}
