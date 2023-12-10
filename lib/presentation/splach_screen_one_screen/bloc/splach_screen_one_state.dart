// ignore_for_file: must_be_immutable

part of 'splach_screen_one_bloc.dart';

/// Represents the state of SplachScreenOne in the application.
class SplachScreenOneState extends Equatable {
  SplachScreenOneState({this.splachScreenOneModelObj});

  SplachScreenOneModel? splachScreenOneModelObj;

  @override
  List<Object?> get props => [
        splachScreenOneModelObj,
      ];
  SplachScreenOneState copyWith(
      {SplachScreenOneModel? splachScreenOneModelObj}) {
    return SplachScreenOneState(
      splachScreenOneModelObj:
          splachScreenOneModelObj ?? this.splachScreenOneModelObj,
    );
  }
}
