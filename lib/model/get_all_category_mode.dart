// import 'package:meta/meta.dart';
// import 'dart:convert';

// GetAllCategory getAllCategoryFromJson(String str) =>
//     GetAllCategory.fromJson(json.decode(str));

// String getAllCategoryToJson(GetAllCategory data) => json.encode(data.toJson());

// class GetAllCategory {
//   GetAllCategory({
//     required this.success,
//     required this.categories,
//   });

//   bool success;
//   List<Category> categories;

//   factory GetAllCategory.fromJson(Map<String, dynamic> json) => GetAllCategory(
//         success: json["success"],
//         categories: List<Category>.from(
//             json["categories"].map((x) => Category.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "success": success,
//         "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
//       };
// }

// class Category {
//   Category({
//     required this.id,
//     required this.parentCategory,
//     required this.image,
//     required this.v,
//   });

//   String id;
//   String parentCategory;
//   String image;
//   int v;

//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//         id: json["_id"],
//         parentCategory: json["parentCategory"],
//         image: json["image"],
//         v: json["__v"],
//       );

//   Map<String, dynamic> toJson() => {
//         "_id": id,
//         "parentCategory": parentCategory,
//         "image": image,
//         "__v": v,
//       };
// }

// To parse this JSON data, do
//
//     final getAllCategory = getAllCategoryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetAllCategory getAllCategoryFromJson(String str) =>
    GetAllCategory.fromJson(json.decode(str));

String getAllCategoryToJson(GetAllCategory data) => json.encode(data.toJson());

class GetAllCategory {
  GetAllCategory({
    required this.success,
    required this.categories,
  });

  bool success;
  List<Category> categories;

  factory GetAllCategory.fromJson(Map<String, dynamic> json) => GetAllCategory(
        success: json["success"],
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    required this.id,
    required this.parentCategory,
    required this.v,
  });

  String id;
  String parentCategory;
  int v;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        parentCategory: json["parentCategory"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "parentCategory": parentCategory,
        "__v": v,
      };
}
