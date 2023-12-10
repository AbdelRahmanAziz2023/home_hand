// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_eight_bloc.dart';

/// Represents the state of Iphone14PlusEight in the application.
class Iphone14PlusEightState extends Equatable {
  Iphone14PlusEightState({
    this.nameController,
    this.firstNameController,
    this.passwordController,
    this.listofServicesController,
    this.isShowPassword = true,
    this.iphone14PlusEightModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? firstNameController;

  TextEditingController? passwordController;

  TextEditingController? listofServicesController;

  Iphone14PlusEightModel? iphone14PlusEightModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        firstNameController,
        passwordController,
        listofServicesController,
        isShowPassword,
        iphone14PlusEightModelObj,
      ];
  Iphone14PlusEightState copyWith({
    TextEditingController? nameController,
    TextEditingController? firstNameController,
    TextEditingController? passwordController,
    TextEditingController? listofServicesController,
    bool? isShowPassword,
    Iphone14PlusEightModel? iphone14PlusEightModelObj,
  }) {
    return Iphone14PlusEightState(
      nameController: nameController ?? this.nameController,
      firstNameController: firstNameController ?? this.firstNameController,
      passwordController: passwordController ?? this.passwordController,
      listofServicesController:
          listofServicesController ?? this.listofServicesController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      iphone14PlusEightModelObj:
          iphone14PlusEightModelObj ?? this.iphone14PlusEightModelObj,
    );
  }
}
