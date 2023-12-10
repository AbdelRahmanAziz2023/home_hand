// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_sixteen_bloc.dart';

/// Represents the state of Iphone14PlusSixteen in the application.
class Iphone14PlusSixteenState extends Equatable {
  Iphone14PlusSixteenState({this.iphone14PlusSixteenModelObj});

  Iphone14PlusSixteenModel? iphone14PlusSixteenModelObj;

  @override
  List<Object?> get props => [
        iphone14PlusSixteenModelObj,
      ];
  Iphone14PlusSixteenState copyWith(
      {Iphone14PlusSixteenModel? iphone14PlusSixteenModelObj}) {
    return Iphone14PlusSixteenState(
      iphone14PlusSixteenModelObj:
          iphone14PlusSixteenModelObj ?? this.iphone14PlusSixteenModelObj,
    );
  }
}
