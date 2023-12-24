import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/data/models/onbordering_model.dart';
import 'package:get/get.dart';

const rootImage = 'assets/images';
List<OnboardingModel> onboardingList = [
  OnboardingModel(
      title: '2'.tr, image: ImageAssets.onBoardingOne, paragraph: '2.1'.tr),
  OnboardingModel(
      title: '2.2'.tr, image: ImageAssets.onBoardingTow, paragraph: '2.3'.tr),
  OnboardingModel(
      title: '2.4'.tr, image: ImageAssets.onBoardingThree, paragraph: '2.5'.tr),
  OnboardingModel(
      title: 'Fast Delivery',
      image: ImageAssets.onBoardingFour,
      paragraph:
          'Reliable And Fast Delivery. Wd  \n Deliver your product the fastet \n way possible'),
];
