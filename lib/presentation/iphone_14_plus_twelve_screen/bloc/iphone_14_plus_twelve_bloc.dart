import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_twelve_screen/models/iphone_14_plus_twelve_model.dart';
part 'iphone_14_plus_twelve_event.dart';
part 'iphone_14_plus_twelve_state.dart';

/// A bloc that manages the state of a Iphone14PlusTwelve according to the event that is dispatched to it.
class Iphone14PlusTwelveBloc
    extends Bloc<Iphone14PlusTwelveEvent, Iphone14PlusTwelveState> {
  Iphone14PlusTwelveBloc(Iphone14PlusTwelveState initialState)
      : super(initialState) {
    on<Iphone14PlusTwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14PlusTwelveInitialEvent event,
    Emitter<Iphone14PlusTwelveState> emit,
  ) async {}
}
