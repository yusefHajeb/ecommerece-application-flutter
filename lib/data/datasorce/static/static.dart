import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/data/models/onbordering_model.dart';
import 'package:get/get.dart';

const rootImage = 'assets/images';
List<OnborderingModel> onbordingList = [
  OnborderingModel(
      title: '2'.tr, image: ImageAssets.onBordingOne, paragraph: '2.1'.tr),
  OnborderingModel(
      title: '2.2'.tr, image: ImageAssets.onBordingTow, paragraph: '2.3'.tr),
  OnborderingModel(
      title: '2.4'.tr, image: ImageAssets.onBordingThree, paragraph: '2.5'.tr),
  OnborderingModel(
      title: 'Fast Delivery',
      image: ImageAssets.onBordingFour,
      paragraph:
          'Reliable And Fast Delivery. Wd  \n Deliver your product the fastet \n way possible'),
];
