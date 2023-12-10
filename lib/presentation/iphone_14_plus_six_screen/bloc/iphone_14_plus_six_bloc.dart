import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_six_screen/models/iphone_14_plus_six_model.dart';
part 'iphone_14_plus_six_event.dart';
part 'iphone_14_plus_six_state.dart';

/// A bloc that manages the state of a Iphone14PlusSix according to the event that is dispatched to it.
class Iphone14PlusSixBloc
    extends Bloc<Iphone14PlusSixEvent, Iphone14PlusSixState> {
  Iphone14PlusSixBloc(Iphone14PlusSixState initialState) : super(initialState) {
    on<Iphone14PlusSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14PlusSixInitialEvent event,
    Emitter<Iphone14PlusSixState> emit,
  ) async {}
}
