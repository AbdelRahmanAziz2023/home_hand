// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fortyfour_item_model.dart';

/// This class defines the variables used in the [iphone_14_plus_eleven_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14PlusElevenModel extends Equatable {
  Iphone14PlusElevenModel({this.fortyfourItemList = const []}) {}

  List<FortyfourItemModel> fortyfourItemList;

  Iphone14PlusElevenModel copyWith(
      {List<FortyfourItemModel>? fortyfourItemList}) {
    return Iphone14PlusElevenModel(
      fortyfourItemList: fortyfourItemList ?? this.fortyfourItemList,
    );
  }

  @override
  List<Object?> get props => [fortyfourItemList];
}
