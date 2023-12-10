// ignore_for_file: must_be_immutable

part of 'splach_bloc.dart';

/// Represents the state of Splach in the application.
class SplachState extends Equatable {
  SplachState({this.splachModelObj});

  SplachModel? splachModelObj;

  @override
  List<Object?> get props => [
        splachModelObj,
      ];
  SplachState copyWith({SplachModel? splachModelObj}) {
    return SplachState(
      splachModelObj: splachModelObj ?? this.splachModelObj,
    );
  }
}
