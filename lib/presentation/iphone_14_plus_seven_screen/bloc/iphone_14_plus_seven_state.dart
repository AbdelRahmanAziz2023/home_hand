// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_seven_bloc.dart';

/// Represents the state of Iphone14PlusSeven in the application.
class Iphone14PlusSevenState extends Equatable {
  Iphone14PlusSevenState({this.iphone14PlusSevenModelObj});

  Iphone14PlusSevenModel? iphone14PlusSevenModelObj;

  @override
  List<Object?> get props => [
        iphone14PlusSevenModelObj,
      ];
  Iphone14PlusSevenState copyWith(
      {Iphone14PlusSevenModel? iphone14PlusSevenModelObj}) {
    return Iphone14PlusSevenState(
      iphone14PlusSevenModelObj:
          iphone14PlusSevenModelObj ?? this.iphone14PlusSevenModelObj,
    );
  }
}
