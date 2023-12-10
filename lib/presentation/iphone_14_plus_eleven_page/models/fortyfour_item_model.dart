import '../../../core/app_export.dart';

/// This class is used in the [fortyfour_item_widget] screen.
class FortyfourItemModel {
  FortyfourItemModel({
    this.price,
    this.offer,
    this.homeCleaning,
    this.bySajbAhmed,
    this.id,
  }) {
    price = price ?? "30/h";
    offer = offer ?? "off 30%";
    homeCleaning = homeCleaning ?? "Home Cleaning";
    bySajbAhmed = bySajbAhmed ?? "by  sajb ahmed";
    id = id ?? "";
  }

  String? price;

  String? offer;

  String? homeCleaning;

  String? bySajbAhmed;

  String? id;
}
