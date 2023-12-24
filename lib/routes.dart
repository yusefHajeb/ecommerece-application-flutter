import 'package:ecommerece/core/constant/routing.dart';
import 'package:ecommerece/core/middleware/mymiddleware.dart';
import 'package:ecommerece/view/screen/auth/forgetpassword/forget_password_screen.dart';
import 'package:ecommerece/view/screen/auth/forgetpassword/rest_password.dart';
import 'package:ecommerece/view/screen/auth/success_singin.dart';
import 'package:ecommerece/view/screen/auth/forgetpassword/sucsses_reset_password.dart';
import 'package:ecommerece/view/screen/auth/forgetpassword/verfirycode.dart';
import 'package:ecommerece/view/screen/auth/verfirycode_singup.dart';
import 'package:ecommerece/view/screen/cart_screen.dart';
import 'package:ecommerece/view/screen/itemscreen.dart';
import 'package:ecommerece/view/screen/homescreen.dart';
import 'package:ecommerece/view/screen/onbradge.dart';
import 'package:ecommerece/view/screen/productsdetails.dart';
import 'package:ecommerece/view/screen/setting.dart';

import 'package:ecommerece/view/widget/home/custombuttonlike.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(
  //     name: '/', page: () => const Launguage(), middlewares: [MyMiddleware()]),
  // GetPage(
  //     name: '/', page: () => const Launguage(), middlewares: [MyMiddleware()]),
  GetPage(
      name: '/',
      page: () => const ForgetPassword(),
      middlewares: [MyMiddleware()]),

  GetPage(
      name: AppRout.authenticationScreen, page: () => const ResetPassword()),
  GetPage(name: AppRout.onBoarding, page: () => const OnBordage()),
  GetPage(name: AppRout.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRout.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRout.verifyCode, page: () => const VerfiryCode()),
  GetPage(
      name: AppRout.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRout.successSingUp, page: () => const SuccessSingIn()),

  GetPage(
      name: AppRout.verifyCodeSingeUp, page: () => const VerfiryCodeSingeUp()),
  // GetPage(name: AppRout.homeScreen, page: () => HomeScreen()), //check
  GetPage(name: AppRout.homeScreen, page: () => const HomeScreen()), //check

  GetPage(
    name: AppRout.likeButton,
    page: () => CustomButtonLike(),
  ),
  GetPage(
      name: AppRout.authenticationScreen, page: () => const ResetPassword()),

  GetPage(name: AppRout.items, page: () => const ItemsScreen()),
  GetPage(
      name: AppRout.productDetails,
      page: () => const CustomProductDetalesScreen()),
  GetPage(name: AppRout.cart, page: () => const CartScreen()),
  GetPage(name: AppRout.settingScreen, page: () => const SettingSCreen()),
  // GetPage(name: AppRout.addAddress, page: () => const AddAdressScreen()),
];
