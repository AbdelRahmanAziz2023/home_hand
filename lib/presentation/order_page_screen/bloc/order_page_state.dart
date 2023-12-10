// ignore_for_file: must_be_immutable

part of 'order_page_bloc.dart';

/// Represents the state of OrderPage in the application.
class OrderPageState extends Equatable {
  OrderPageState({this.orderPageModelObj});

  OrderPageModel? orderPageModelObj;

  @override
  List<Object?> get props => [
        orderPageModelObj,
      ];
  OrderPageState copyWith({OrderPageModel? orderPageModelObj}) {
    return OrderPageState(
      orderPageModelObj: orderPageModelObj ?? this.orderPageModelObj,
    );
  }
}
