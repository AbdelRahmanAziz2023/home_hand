import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/order_page_screen/models/order_page_model.dart';
part 'order_page_event.dart';
part 'order_page_state.dart';

/// A bloc that manages the state of a OrderPage according to the event that is dispatched to it.
class OrderPageBloc extends Bloc<OrderPageEvent, OrderPageState> {
  OrderPageBloc(OrderPageState initialState) : super(initialState) {
    on<OrderPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderPageInitialEvent event,
    Emitter<OrderPageState> emit,
  ) async {}
}
