import 'package:flutter/material.dart';

class CategoriesModel {
  String? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDataTime;
  IconData? icon;
  String? active;
  CategoriesModel(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesImage,
      this.categoriesDataTime,
      this.icon,
      this.active});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categores_id'];
    categoriesId = json['categores_name'];
    categoriesId = json['categores_name_ar'];
    categoriesId = json['categores_image'];
    categoriesId = json['categores_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categores_id'] = this.categoriesId;
    data['categores_name'] = this.categoriesName;
    data['categores_name_ar'] = this.categoriesNameAr;
    data['categores_image'] = this.categoriesImage;
    data['categores_datetime'] = this.categoriesDataTime;

    return data;
  }
}
