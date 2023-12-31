import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapnroute/src/features/core/screens/dashboard/widgets/dashboard.dart';
import 'package:tapnroute/src/repository/authentication_repository/exceptions/authentication_repository.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  void loginUser(String email, String password) {
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }

}