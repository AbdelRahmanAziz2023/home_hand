// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_fourteen_bloc.dart';

/// Represents the state of Iphone14PlusFourteen in the application.
class Iphone14PlusFourteenState extends Equatable {
  Iphone14PlusFourteenState({
    this.fiftySevenController,
    this.iphone14PlusFourteenModelObj,
  });

  TextEditingController? fiftySevenController;

  Iphone14PlusFourteenModel? iphone14PlusFourteenModelObj;

  @override
  List<Object?> get props => [
        fiftySevenController,
        iphone14PlusFourteenModelObj,
      ];
  Iphone14PlusFourteenState copyWith({
    TextEditingController? fiftySevenController,
    Iphone14PlusFourteenModel? iphone14PlusFourteenModelObj,
  }) {
    return Iphone14PlusFourteenState(
      fiftySevenController: fiftySevenController ?? this.fiftySevenController,
      iphone14PlusFourteenModelObj:
          iphone14PlusFourteenModelObj ?? this.iphone14PlusFourteenModelObj,
    );
  }
}
