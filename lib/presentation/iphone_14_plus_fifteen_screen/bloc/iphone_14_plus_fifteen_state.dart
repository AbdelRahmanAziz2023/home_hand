// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_fifteen_bloc.dart';

/// Represents the state of Iphone14PlusFifteen in the application.
class Iphone14PlusFifteenState extends Equatable {
  Iphone14PlusFifteenState({this.iphone14PlusFifteenModelObj});

  Iphone14PlusFifteenModel? iphone14PlusFifteenModelObj;

  @override
  List<Object?> get props => [
        iphone14PlusFifteenModelObj,
      ];
  Iphone14PlusFifteenState copyWith(
      {Iphone14PlusFifteenModel? iphone14PlusFifteenModelObj}) {
    return Iphone14PlusFifteenState(
      iphone14PlusFifteenModelObj:
          iphone14PlusFifteenModelObj ?? this.iphone14PlusFifteenModelObj,
    );
  }
}
