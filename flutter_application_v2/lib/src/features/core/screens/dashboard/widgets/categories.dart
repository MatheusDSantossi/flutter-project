import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/features/core/models/dashboard/categories_model.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;

    // make the same thing of builder in Top Methods!

    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: mDarkColor),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: txtTheme.headlineSmall?.apply(
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index].heading,
                        style: txtTheme.headlineSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        list[index].subHeading,
                        style: txtTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // children: [
        // SizedBox(
        //   width: 170,
        //   height: 50,
        //   child: Row(
        //     children: [
        //       Container(
        //         width: 45,
        //         height: 45,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: mDarkColor),
        //         child: Center(
        //           child: Text(
        //             "SM",
        //             style: txtTheme.headlineSmall?.apply(color: Colors.white),
        //           ),
        //         ),
        //       ),
        //       const SizedBox(width: 5),
        //       Flexible(
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               "Scrum method",
        //               style: txtTheme.headlineSmall,
        //               overflow: TextOverflow.ellipsis,
        //             ),
        //             Text(
        //               "10 lessons",
        //               style: txtTheme.bodyMedium,
        //               overflow: TextOverflow.ellipsis,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   width: 170,
        //   height: 50,
        //   child: Row(
        //     children: [
        //       Container(
        //         width: 45,
        //         height: 45,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: mDarkColor),
        //         child: Center(
        //           child: Text(
        //             "SM",
        //             style: txtTheme.headlineSmall?.apply(color: Colors.white),
        //           ),
        //         ),
        //       ),
        //       const SizedBox(width: 5),
        //       Flexible(
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               "Scrum method",
        //               style: txtTheme.headlineSmall,
        //               overflow: TextOverflow.ellipsis,
        //             ),
        //             Text(
        //               "10 lessons",
        //               style: txtTheme.bodyMedium,
        //               overflow: TextOverflow.ellipsis,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   width: 170,
        //   height: 50,
        //   child: Row(
        //     children: [
        //       Container(
        //         width: 45,
        //         height: 45,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: mDarkColor),
        //         child: Center(
        //           child: Text(
        //             "SM",
        //             style: txtTheme.headlineSmall?.apply(color: Colors.white),
        //           ),
        //         ),
        //       ),
        //       const SizedBox(width: 5),
        //       Flexible(
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               "Scrum method",
        //               style: txtTheme.headlineSmall,
        //               overflow: TextOverflow.ellipsis,
        //             ),
        //             Text(
        //               "10 lessons",
        //               style: txtTheme.bodyMedium,
        //               overflow: TextOverflow.ellipsis,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        //
        // ],
      ),
    );
  }
}
