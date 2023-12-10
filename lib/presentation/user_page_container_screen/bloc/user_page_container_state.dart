// ignore_for_file: must_be_immutable

part of 'user_page_container_bloc.dart';

/// Represents the state of UserPageContainer in the application.
class UserPageContainerState extends Equatable {
  UserPageContainerState({this.userPageContainerModelObj});

  UserPageContainerModel? userPageContainerModelObj;

  @override
  List<Object?> get props => [
        userPageContainerModelObj,
      ];
  UserPageContainerState copyWith(
      {UserPageContainerModel? userPageContainerModelObj}) {
    return UserPageContainerState(
      userPageContainerModelObj:
          userPageContainerModelObj ?? this.userPageContainerModelObj,
    );
  }
}
