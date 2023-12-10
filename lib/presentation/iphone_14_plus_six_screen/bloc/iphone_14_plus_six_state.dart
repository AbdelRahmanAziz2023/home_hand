// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_six_bloc.dart';

/// Represents the state of Iphone14PlusSix in the application.
class Iphone14PlusSixState extends Equatable {
  Iphone14PlusSixState({this.iphone14PlusSixModelObj});

  Iphone14PlusSixModel? iphone14PlusSixModelObj;

  @override
  List<Object?> get props => [
        iphone14PlusSixModelObj,
      ];
  Iphone14PlusSixState copyWith(
      {Iphone14PlusSixModel? iphone14PlusSixModelObj}) {
    return Iphone14PlusSixState(
      iphone14PlusSixModelObj:
          iphone14PlusSixModelObj ?? this.iphone14PlusSixModelObj,
    );
  }
}
