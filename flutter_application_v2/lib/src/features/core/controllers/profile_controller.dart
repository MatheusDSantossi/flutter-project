import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/models/user_model.dart';
import 'package:flutter_project_mobile_v2/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_project_mobile_v2/src/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  // Controllers
  // final email = TextEditingController();
  // final password = TextEditingController();
  // final fullName = TextEditingController();
  // final phoneNo = TextEditingController();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  /*
      ===========
      Todo: Step 3 - Fetch All Users OR User details - Class 19
      ===========
    */
  // Get User Email and Password to UserRepository to fetch user record.
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Login to continue");
    }
  }

  // Fetch List of user records.
  Future<List<UserModel>> getAllUser() async {
    return await _userRepo.allUser();
  }

  updateRecord(UserModel user) async {
    await _userRepo.updateUserRecord(user);
  }
}
