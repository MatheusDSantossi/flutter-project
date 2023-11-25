import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(
      this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("SM", "Scrum Master", "10 Lessons", null),
    DashboardCategoriesModel("F", "Scrum", "12 Lessons", null),
    DashboardCategoriesModel("H", "Master", "7 Lessons", null),
    DashboardCategoriesModel("K", "Scrum Master 2", "15 Lessons", null),
    DashboardCategoriesModel("M", "Scrum Master 23", "100 Lessons", null),
  ];
}
