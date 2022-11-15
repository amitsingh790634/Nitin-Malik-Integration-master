// import 'dart:convert';

// SearchModel allsearchModelFromJson(String str) =>
//     SearchModel.fromJson(json.decode(str));

// String allsearchModelToJson(SearchModel data) => json.encode(data.toJson());

// class SearchModel {
//   SearchModel({
//     required this.success,
//     required this.products,
//     required this.demoProduct,
//     required this.productsCount,
//     required this.resultPerPage,
//     required this.filteredProductsCount,
//   });

//   bool success;
//   List<dynamic> products;
//   List<DemoProduct> demoProduct;
//   int productsCount;
//   int resultPerPage;
//   int filteredProductsCount;

//   factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
//         success: json["success"],
//         products: List<dynamic>.from(json["products"].map((x) => x)),
//         demoProduct: List<DemoProduct>.from(
//             json["demoProduct"].map((x) => DemoProduct.fromJson(x))),
//         productsCount: json["productsCount"],
//         resultPerPage: json["resultPerPage"],
//         filteredProductsCount: json["filteredProductsCount"],
//       );

//   Map<String, dynamic> toJson() => {
//         "success": success,
//         "products": List<dynamic>.from(products.map((x) => x)),
//         "demoProduct": List<dynamic>.from(demoProduct.map((x) => x.toJson())),
//         "productsCount": productsCount,
//         "resultPerPage": resultPerPage,
//         "filteredProductsCount": filteredProductsCount,
//       };
// }

// class DemoProduct {
//   DemoProduct({
//     required this.id,
//     required this.name,
//     required this.price,
//     required this.ratings,
//     required this.category,
//   });

//   String id;
//   String name;
//   int price;
//   int ratings;
//   String category;

//   factory DemoProduct.fromJson(Map<String, dynamic> json) => DemoProduct(
//         id: json["_id"],
//         name: json["name"],
//         price: json["price"],
//         ratings: json["ratings"],
//         category: json["category"],
//       );

//   Map<String, dynamic> toJson() => {
//         "_id": id,
//         "name": name,
//         "price": price,
//         "ratings": ratings,
//         "category": category,
//       };
// }

// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SearchModel searchModelFromJson(String str) =>
    SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  SearchModel({
    required this.success,
    required this.products,
    required this.demoProduct,
    required this.productsCount,
    required this.resultPerPage,
    required this.filteredProductsCount,
  });

  bool success;
  List<dynamic> products;
  List<DemoProduct> demoProduct;
  int productsCount;
  int resultPerPage;
  int filteredProductsCount;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        success: json["success"],
        products: List<dynamic>.from(json["products"].map((x) => x)),
        demoProduct: List<DemoProduct>.from(
            json["demoProduct"].map((x) => DemoProduct.fromJson(x))),
        productsCount: json["productsCount"],
        resultPerPage: json["resultPerPage"],
        filteredProductsCount: json["filteredProductsCount"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "products": List<dynamic>.from(products.map((x) => x)),
        "demoProduct": List<dynamic>.from(demoProduct.map((x) => x.toJson())),
        "productsCount": productsCount,
        "resultPerPage": resultPerPage,
        "filteredProductsCount": filteredProductsCount,
      };
}

class DemoProduct {
  DemoProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.ratings,
    required this.category,
  });

  String id;
  String name;
  int price;
  double ratings;
  String category;

  factory DemoProduct.fromJson(Map<String, dynamic> json) => DemoProduct(
        id: json["_id"],
        name: json["name"],
        price: json["price"],
        ratings: json["ratings"].toDouble(),
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "price": price,
        "ratings": ratings,
        "category": category,
      };
}
