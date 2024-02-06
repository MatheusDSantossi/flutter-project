import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/dashboard/widgets/top_methods.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(mDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text(mDashboardTitle, style: txtTheme.bodyMedium),
              Text(mDashboardHeading, style: txtTheme.headlineMedium),
              const SizedBox(height: mDashboardPadding),

              // Search box
              DashboardSearchBox(txtTheme: txtTheme),
              const SizedBox(height: mDashboardPadding),

              // Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: mDashboardPadding),

              // Banners
              DashboardBanners(txtTheme: txtTheme),
              const SizedBox(height: mDashboardPadding),


              // Top Manegement Methods
              Text(mDashboardTopManegementMethods,
                  style: txtTheme.headlineSmall
                      ?.apply(fontSizeFactor: 1.2)), //fontSize: (18 * 1.2)
              DashboardTopMethods(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}
