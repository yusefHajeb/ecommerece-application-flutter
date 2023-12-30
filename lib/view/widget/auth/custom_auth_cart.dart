import 'package:ecommerece/controller/authentication_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/functions/cheackinternet.dart';
import 'package:ecommerece/core/functions/validinpout.dart';
import 'package:ecommerece/view/test_vew_view.dart';
import 'package:ecommerece/view/widget/auth/custom_button_matierial.dart';
import 'package:ecommerece/view/widget/auth/custom_text_file.dart';
import 'package:ecommerece/view/widget/auth/custom_username.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthCart extends StatefulWidget {
  const AuthCart({super.key});

  @override
  State<AuthCart> createState() => _AuthCartState();
}

enum AuthMode { login, singUp }

class _AuthCartState extends State<AuthCart>
    with SingleTickerProviderStateMixin {
  // final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  AuthMode _authMode = AuthMode.login;
  late AnimationController _controller;
  late Animation<Offset> _slideAnimate;
  late Animation<double> _opacityController;

  final Map<String, String> _uthMap = {
    'password': ' ',
    'email': '',
  };
  // bool _isLoading = false;

  var res;
  initialData() async {
    res = await checkInternet();
  }

  @override
  void initState() {
    initialData();
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 300),
    );
    _slideAnimate =
        Tween<Offset>(begin: const Offset(0, -0.15), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );
    _opacityController = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    FocusScope.of(context).unfocus();
    // _fromKey.currentState?.save();
    // setState(() {
    //   _isLoading = true;
    // });
    try {
      if (_authMode == AuthMode.login) {
        // await Provider.of<AuthProvider>(context, listen: false).login(
        // _utheMap['email'].toString(), _utheMap['password'].toString());
      } else {
        // await Provider.of<AuthProvider>(context, listen: false).singUp(
        // _utheMap['email'] as String, _utheMap['password'].toString());
        // _showErrorDialoge(" تم تسجيل دخولك بنجاح");
      }
    } catch (error) {
      //   var errorMessage = 'Authentication failed';
      //   if (error.toString().contains('EMAIL_EXISTS')) {
      //     errorMessage = "This email adderss is already in use.";
      //   } else if (error.toString().contains('INVALID_EMAIL')) {
      //     errorMessage = "This is not a valid email address";
      //   } else if (error.toString().contains('WEAK_PASSWORD')) {
      //     errorMessage = 'This password is too weak';
      //   } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
      //     // errorMessage = 'Invalid Password.';
      //     errorMessage = 'Could not  find auser with that email.';
      //   } else if (error.toString().contains('INVALID_PASSWORD')) {
      //     _showErrorDialoge(errorMessage);
      //   }
      // } catch (error) {
      //   const errorMessage =
      //       'Could not authentication you. Plase try again aleter .';
      //   _showErrorDialoge(errorMessage);
      //
    }

    // setState(() {
    //   _isLoading = false;
    // });
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.login) {
      setState(() {
        _authMode = AuthMode.singUp;
      });
      _controller.forward();
    } else {
      setState(() {
        _authMode = AuthMode.login;
      });
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => AuthenticationControllerImp());
    AuthenticationControllerImp controller =
        Get.put(AuthenticationControllerImp());
    final size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: AppColor.white,
      elevation: 8.0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
        height: _authMode == AuthMode.singUp ? 490 : 300,
        constraints:
            BoxConstraints(minHeight: _authMode == AuthMode.singUp ? 320 : 260),
        width: size.width * 0.75,
        padding: const EdgeInsets.all(16),
        child: Form(
          key: controller.formState,
          child: SingleChildScrollView(
            child: Wrap(
              children: [
                CustomTextFormEmail(
                  map: _uthMap,
                  controller: controller.emailController,
                  valid: (val) {
                    return validInput(val!, min: 6, max: 100, type: 'email');
                  },
                ),
                GetBuilder<AuthenticationControllerImp>(
                  builder: (control) => CustomTextFromField(
                      labelText: 'Password',
                      iconData: const Icon(Icons.lock_outline_rounded),
                      varEnable: true,
                      controller: controller.passwordController,
                      valid: (val) {
                        return validInput(val!,
                            min: 8, max: 30, type: 'password');
                      },
                      obscure: controller.showValuePassword,
                      showPassword: () {
                        controller.showPassword();
                      }),
                ),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 20),
                      curve: Curves.easeIn,
                      constraints: BoxConstraints(
                          maxHeight: _authMode == AuthMode.singUp ? 250 : 0,
                          minHeight: _authMode == AuthMode.singUp ? 130 : 0),
                      child: FadeTransition(
                        opacity: _opacityController,
                        child: SlideTransition(
                          position: _slideAnimate,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                CustomTextFromField(
                                  labelText: 'Username',
                                  iconData: const Icon(
                                      Icons.broadcast_on_personal_outlined),
                                  varEnable: _authMode != AuthMode.login,
                                  controller: controller.usernameController,
                                  valid: (val) {
                                    return validInput(val!,
                                        min: 4, max: 9, type: 'username');
                                  },
                                ),
                                CustomTextFromField(
                                  labelText: 'phone',
                                  iconData:
                                      const Icon(Icons.phone_iphone_outlined),
                                  varEnable: _authMode != AuthMode.login,
                                  controller: controller.phonController,
                                  valid: (val) {
                                    return validInput(val!,
                                        min: 4, max: 9, type: 'phone');
                                  },
                                ),
                                GetBuilder<AuthenticationControllerImp>(
                                  builder: (control) => CustomTextFromField(
                                      labelText: 'Confirm Password',
                                      iconData:
                                          const Icon(Icons.confirmation_number),
                                      varEnable: _authMode != AuthMode.login,
                                      controller: controller.confirmController,
                                      valid: (val) {
                                        return validInput(val!,
                                            min: 8, max: 30, type: 'password');
                                      },
                                      obscure: controller.showValuePassword,
                                      showPassword: () {
                                        controller.showPassword();
                                      }),
                                ),
                                const SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  // focusNode: _focusNode.parent,
                  onHover: (value) => const Color.fromARGB(255, 25, 18, 17),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const TestView();
                    }));
                    // controller.goToForgetPassword();
                  },
                  child: const Text(
                    "Forget Password",
                    style: TextStyle(
                      color: AppColor.gray,
                    ),
                  ),
                ),
                // _isLoading
                // ? const CircularProgressIndicator()
                Column(
                  children: [
                    CustomButtonOK(
                        text: _authMode == AuthMode.login
                            ? "Singe In"
                            : "Singe Up",
                        submit: () => {
                              _authMode == AuthMode.login
                                  ? controller.goToSingIn()
                                  : controller.goToSingUp()
                            }),
                  ],
                ),
                Center(
                  child: TextButton(
                    onHover: (value) => const Color.fromARGB(255, 25, 18, 17),
                    onPressed: _switchAuthMode,
                    child: Text(
                      "${_authMode == AuthMode.login ? "Singe Up" : "Login"} Instead",
                      style: const TextStyle(
                        color: AppColor.backgroundScreen,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showErrorDialoge(String errorMessage) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: const Text('An Error Occurred!'),
              content: Text(errorMessage),
              actions: [
                FloatingActionButton(
                  onPressed: () => Navigator.of(ctx).pop(),
                  child: const Text("okay!"),
                )
              ],
            ));
  }
}
