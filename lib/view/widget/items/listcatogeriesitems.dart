// import 'package:ecommerece/controller/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:get/get.dart';

// class ListCatogeriesItems extends GetView<HomeContollerImp> {
//   const ListCatogeriesItems({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: ListView.separated(itemBuilder: (context,index){

//       },
//        separatorBuilder: (context,index)=> const SizedBox(width: 10,), itemCount: controller.categories.length,
//        ),
//     );
//   }
// }

// class Categores extends GetView<HomeContollerImp> {
//   final CategoryModels cated;
//   const Categores({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: (){
//         controller.goToItems(categoris, selectedCat)
//       },
//     )
//   }
// }