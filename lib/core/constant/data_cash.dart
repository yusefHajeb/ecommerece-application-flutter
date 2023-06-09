import 'package:flutter/material.dart';

class DataKayan {
  final String title;
  final String paragtaph;
  final String imgUrl;

  DataKayan(
      {required this.title, required this.paragtaph, required this.imgUrl});
}

List<DataKayan> data = [
  DataKayan(
    title: 'الزيارات العائلية',
    paragtaph:
        "من بين خدمات مكتب الكيان الدولي للسفريات والسياحة يوجد خدمة الزيارة العائلية،  تتضمن خدمة الزيارة العائلية أيضًا إجراءات _ تأشيرات الدخول للزائرين، بشكل عام، تتيح خدمة الزيارة العائلية للزوار فرصًا ثمينة للاستكشاف والاحتفال بأحبائهم في الخارج والحصول على تجربة سفر مريحة وسلسة. وتعد خدمات مكتب الكيان الدولي للسفريات والسياحة من بين الأفضل في هذا المجال، حيث يمكن للزائرين الاستفادة من خدماتهم المتميزة",
    imgUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
  ),
  DataKayan(
    title: 'تأشيرات عمل',
    paragtaph:
        'تاشيرات عمل الئ معظم الدول المجاورة بااسعار مناسبة _ وتاشيرات مضمونة ',
    imgUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
  ),
  DataKayan(
    title: "انجاز المعاملات ",
    paragtaph:
        " يسعئ مكتب الكيان ان يوفر لعملائه خدمات اخرئ منها اصدار _ الاقامات والمعاملات الاخرئ ",
    imgUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
  ),
  DataKayan(
    title: "انجاز المعاملات ",
    paragtaph:
        " يسعئ مكتب الكيان ان يوفر لعملائه خدمات اخرئ منها اصدار _ الاقامات والمعاملات الاخرئ ",
    imgUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
  ),
];

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}
