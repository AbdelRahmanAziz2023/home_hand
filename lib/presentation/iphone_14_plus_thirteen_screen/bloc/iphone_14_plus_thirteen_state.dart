// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_thirteen_bloc.dart';

/// Represents the state of Iphone14PlusThirteen in the application.
class Iphone14PlusThirteenState extends Equatable {
  Iphone14PlusThirteenState({this.iphone14PlusThirteenModelObj});

  Iphone14PlusThirteenModel? iphone14PlusThirteenModelObj;

  @override
  List<Object?> get props => [
        iphone14PlusThirteenModelObj,
      ];
  Iphone14PlusThirteenState copyWith(
      {Iphone14PlusThirteenModel? iphone14PlusThirteenModelObj}) {
    return Iphone14PlusThirteenState(
      iphone14PlusThirteenModelObj:
          iphone14PlusThirteenModelObj ?? this.iphone14PlusThirteenModelObj,
    );
  }
}
