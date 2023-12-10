// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_nine_bloc.dart';

/// Represents the state of Iphone14PlusNine in the application.
class Iphone14PlusNineState extends Equatable {
  Iphone14PlusNineState({
    this.nameController,
    this.firstNameController,
    this.passwordController,
    this.isShowPassword = true,
    this.iphone14PlusNineModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? firstNameController;

  TextEditingController? passwordController;

  Iphone14PlusNineModel? iphone14PlusNineModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        firstNameController,
        passwordController,
        isShowPassword,
        iphone14PlusNineModelObj,
      ];
  Iphone14PlusNineState copyWith({
    TextEditingController? nameController,
    TextEditingController? firstNameController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    Iphone14PlusNineModel? iphone14PlusNineModelObj,
  }) {
    return Iphone14PlusNineState(
      nameController: nameController ?? this.nameController,
      firstNameController: firstNameController ?? this.firstNameController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      iphone14PlusNineModelObj:
          iphone14PlusNineModelObj ?? this.iphone14PlusNineModelObj,
    );
  }
}
