import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/splach_screen_one_screen/models/splach_screen_one_model.dart';
part 'splach_screen_one_event.dart';
part 'splach_screen_one_state.dart';

/// A bloc that manages the state of a SplachScreenOne according to the event that is dispatched to it.
class SplachScreenOneBloc
    extends Bloc<SplachScreenOneEvent, SplachScreenOneState> {
  SplachScreenOneBloc(SplachScreenOneState initialState) : super(initialState) {
    on<SplachScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplachScreenOneInitialEvent event,
    Emitter<SplachScreenOneState> emit,
  ) async {}
}
