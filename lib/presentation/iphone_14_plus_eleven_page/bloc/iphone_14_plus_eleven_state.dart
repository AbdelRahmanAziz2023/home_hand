// ignore_for_file: must_be_immutable

part of 'iphone_14_plus_eleven_bloc.dart';

/// Represents the state of Iphone14PlusEleven in the application.
class Iphone14PlusElevenState extends Equatable {
  Iphone14PlusElevenState({
    this.searchController,
    this.iphone14PlusElevenModelObj,
  });

  TextEditingController? searchController;

  Iphone14PlusElevenModel? iphone14PlusElevenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        iphone14PlusElevenModelObj,
      ];
  Iphone14PlusElevenState copyWith({
    TextEditingController? searchController,
    Iphone14PlusElevenModel? iphone14PlusElevenModelObj,
  }) {
    return Iphone14PlusElevenState(
      searchController: searchController ?? this.searchController,
      iphone14PlusElevenModelObj:
          iphone14PlusElevenModelObj ?? this.iphone14PlusElevenModelObj,
    );
  }
}
