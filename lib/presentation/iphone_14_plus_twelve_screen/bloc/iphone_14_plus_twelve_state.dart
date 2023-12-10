// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_twelve_bloc.dart';

/// Represents the state of Iphone14PlusTwelve in the application.
class Iphone14PlusTwelveState extends Equatable {
  Iphone14PlusTwelveState({this.iphone14PlusTwelveModelObj});

  Iphone14PlusTwelveModel? iphone14PlusTwelveModelObj;

  @override
  List<Object?> get props => [
        iphone14PlusTwelveModelObj,
      ];
  Iphone14PlusTwelveState copyWith(
      {Iphone14PlusTwelveModel? iphone14PlusTwelveModelObj}) {
    return Iphone14PlusTwelveState(
      iphone14PlusTwelveModelObj:
          iphone14PlusTwelveModelObj ?? this.iphone14PlusTwelveModelObj,
    );
  }
}
