import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/splach_screen/models/splach_model.dart';
part 'splach_event.dart';
part 'splach_state.dart';

/// A bloc that manages the state of a Splach according to the event that is dispatched to it.
class SplachBloc extends Bloc<SplachEvent, SplachState> {
  SplachBloc(SplachState initialState) : super(initialState) {
    on<SplachInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplachInitialEvent event,
    Emitter<SplachState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.splachScreenOneScreen,
      );
    });
  }
}
