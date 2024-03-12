/*
      ===========
      Todo: Step - 2 [User Repository to perform Database Operation]
      ===========
*/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/models/user_model.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(
          () => Get.snackbar("Sucess", "You account has been created.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green),
        )
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });
  }

  /*
      ===========
      Todo: Step - Fetch All Users OR User details - Class 19
      ===========
  */

  Future<UserModel> getUserDetails(String email) async {
    final snapshot =
        await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

  Future<List<UserModel>> allUser() async {
    try {
      final snapshot = await _db.collection("Users").get();
      final userData =
          snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
      return userData;
    } catch (e) {
      Get.showSnackbar(GetSnackBar(message: ("Error fetch the user data: $e")));
      return [];
    }
  }

  Future<void> updateUserRecord(UserModel user) async {
    // Get.showSnackbar(GetSnackBar(message: user.id));
    await _db.collection("Users").doc(user.id).update(user.toJson());
  }
}
