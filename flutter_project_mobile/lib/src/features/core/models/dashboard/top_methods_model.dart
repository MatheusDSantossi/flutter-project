import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/image_strings.dart';

class DashboardTopMethodsModel {
  final String title;
  final String image;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardTopMethodsModel(
      this.title, this.image, this.heading, this.subHeading, this.onPress);

  static List<DashboardTopMethodsModel> list = [
    DashboardTopMethodsModel("Scrum master Course", mTopManegementImage1,
        "3 Sections", "Manegement Methods", null),
    DashboardTopMethodsModel("Kanbam master Course", mTopManegementImage2,
        "4 Sections", "Manegement Methods", null),
    DashboardTopMethodsModel("OLS master Course", mTopManegementImage1,
        "6 Sections", "Manegement Methods", null),
    DashboardTopMethodsModel("TEI master Course", mTopManegementImage2,
        "2 Sections", "Manegement Methods", null),
    DashboardTopMethodsModel("RSDsa master Course", mTopManegementImage1,
        "10 Sections", "Manegement Methods", null),
  ];
}
