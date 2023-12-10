// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_ten_bloc.dart';

/// Represents the state of Iphone14PlusTen in the application.
class Iphone14PlusTenState extends Equatable {
  Iphone14PlusTenState({
    this.nameController,
    this.firstNameController,
    this.passwordController,
    this.listofServicesController,
    this.isShowPassword = true,
    this.iphone14PlusTenModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? firstNameController;

  TextEditingController? passwordController;

  TextEditingController? listofServicesController;

  Iphone14PlusTenModel? iphone14PlusTenModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        firstNameController,
        passwordController,
        listofServicesController,
        isShowPassword,
        iphone14PlusTenModelObj,
      ];
  Iphone14PlusTenState copyWith({
    TextEditingController? nameController,
    TextEditingController? firstNameController,
    TextEditingController? passwordController,
    TextEditingController? listofServicesController,
    bool? isShowPassword,
    Iphone14PlusTenModel? iphone14PlusTenModelObj,
  }) {
    return Iphone14PlusTenState(
      nameController: nameController ?? this.nameController,
      firstNameController: firstNameController ?? this.firstNameController,
      passwordController: passwordController ?? this.passwordController,
      listofServicesController:
          listofServicesController ?? this.listofServicesController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      iphone14PlusTenModelObj:
          iphone14PlusTenModelObj ?? this.iphone14PlusTenModelObj,
    );
  }
}
