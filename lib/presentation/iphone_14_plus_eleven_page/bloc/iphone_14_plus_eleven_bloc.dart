import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortyfour_item_model.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_eleven_page/models/iphone_14_plus_eleven_model.dart';
part 'iphone_14_plus_eleven_event.dart';
part 'iphone_14_plus_eleven_state.dart';

/// A bloc that manages the state of a Iphone14PlusEleven according to the event that is dispatched to it.
class Iphone14PlusElevenBloc
    extends Bloc<Iphone14PlusElevenEvent, Iphone14PlusElevenState> {
  Iphone14PlusElevenBloc(Iphone14PlusElevenState initialState)
      : super(initialState) {
    on<Iphone14PlusElevenInitialEvent>(_onInitialize);
  }

  List<FortyfourItemModel> fillFortyfourItemList() {
    return [
      FortyfourItemModel(
          price: "30/h",
          offer: "off 30%",
          homeCleaning: "Home Cleaning",
          bySajbAhmed: "by  sajb ahmed"),
      FortyfourItemModel(
          price: "30/h",
          offer: "off 30%",
          homeCleaning: "Home Cleaning",
          bySajbAhmed: "by  sajb ahmed"),
      FortyfourItemModel(
          price: "30/h",
          offer: "off 30%",
          homeCleaning: "Home Cleaning",
          bySajbAhmed: "by  sajb ahmed"),
      FortyfourItemModel(
          price: "30/h",
          offer: "off 30%",
          homeCleaning: "Home Cleaning",
          bySajbAhmed: "by  sajb ahmed")
    ];
  }

  _onInitialize(
    Iphone14PlusElevenInitialEvent event,
    Emitter<Iphone14PlusElevenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        iphone14PlusElevenModelObj: state.iphone14PlusElevenModelObj?.copyWith(
      fortyfourItemList: fillFortyfourItemList(),
    )));
  }
}
