import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  final title = 'Search'.obs;
  final formKey = GlobalKey<FormState>();
  var email = ''.obs;
  var password = ''.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? emailValidator(String? value) {
    if (value!.isEmpty || !value.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value!.isEmpty || value.length < 8) {
      return 'Please enter a valid password; length must be 8 characters long';
    }
    return null;
  }

  void submitAttempt() {
    final isValid = formKey.currentState!.validate();
    if(isValid){
      Get.snackbar('Success', 'Login Successful');
      Get.focusScope!.unfocus();
      print(emailController.text);
      print(passwordController.text);
    }
  }
}
