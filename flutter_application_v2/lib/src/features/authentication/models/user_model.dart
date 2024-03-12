/*
      ===========
      Todo: Step - 1 [Create Model] - Class 18
      ===========
*/

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.fullName,
    required this.phoneNo,
  });

  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }
  /*
      ===========
      Todo: Step - 1 Map user fetched from Firebase to UserModel. - Class 19 (https://www.youtube.com/watch?v=Kn2vOrznAxs&list=PL5jb9EteFAODpfNJu8U2CMqKFp4NaXlto&index=21)
      ===========
     */

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      // id: document.id,
      email: data["Email"],
      password: data["Password"],
      fullName: data["FullName"],
      phoneNo: data["Phone"],
    );
  }
}
