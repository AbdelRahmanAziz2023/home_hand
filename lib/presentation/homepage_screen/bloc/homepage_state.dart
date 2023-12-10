// ignore_for_file: must_be_immutable

part of 'homepage_bloc.dart';

/// Represents the state of Homepage in the application.
class HomepageState extends Equatable {
  HomepageState({
    this.searchController,
    this.cleaningController,
    this.homepageModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? cleaningController;

  HomepageModel? homepageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cleaningController,
        homepageModelObj,
      ];
  HomepageState copyWith({
    TextEditingController? searchController,
    TextEditingController? cleaningController,
    HomepageModel? homepageModelObj,
  }) {
    return HomepageState(
      searchController: searchController ?? this.searchController,
      cleaningController: cleaningController ?? this.cleaningController,
      homepageModelObj: homepageModelObj ?? this.homepageModelObj,
    );
  }
}
