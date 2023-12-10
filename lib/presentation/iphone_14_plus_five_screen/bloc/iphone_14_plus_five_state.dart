// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_five_bloc.dart';

/// Represents the state of Iphone14PlusFive in the application.
class Iphone14PlusFiveState extends Equatable {
  Iphone14PlusFiveState({this.iphone14PlusFiveModelObj});

  Iphone14PlusFiveModel? iphone14PlusFiveModelObj;

  @override
  List<Object?> get props => [
        iphone14PlusFiveModelObj,
      ];
  Iphone14PlusFiveState copyWith(
      {Iphone14PlusFiveModel? iphone14PlusFiveModelObj}) {
    return Iphone14PlusFiveState(
      iphone14PlusFiveModelObj:
          iphone14PlusFiveModelObj ?? this.iphone14PlusFiveModelObj,
    );
  }
}
