import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/features/core/models/dashboard/categories_model.dart';
import 'package:flutter_project_mobile_v2/src/features/core/models/dashboard/top_methods_model.dart';

class DashboardTopMethods extends StatelessWidget {
  DashboardTopMethods({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  final list = DashboardTopMethodsModel.list;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDark = brightness == Brightness.dark;

    return SizedBox(
      height: 200,
      // child: ListView(
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark ? mSecondaryColor : mCardBgColor),
                // color: mCardBgColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(list[index].title,
                              // child: Text("Scrum Crash Course",
                              style: txtTheme.headlineMedium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Flexible(
                            child: Image(
                                image: AssetImage(list[index].image),
                                // image: AssetImage(mTopManegementImage1),
                                height: 110)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor:
                                  isDark ? mPrimaryColor : mSecondaryColor),
                          onPressed: () {},
                          child: const Icon(Icons.play_arrow),
                        ),
                        const SizedBox(width: mDashboardCardPadding),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index].heading,
                                // Text("3 Sections",
                                style: txtTheme.headlineMedium,
                                overflow: TextOverflow.ellipsis),
                            Text(list[index].subHeading,
                                // Text("Manegement Methods",
                                style: txtTheme.headlineMedium,
                                overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),

        // children: [
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 10, top: 5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: mCardBgColor),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(
        //                   child: Text("Scrum Crash Course",
        //                       style: txtTheme.headlineMedium,
        //                       maxLines: 2,
        //                       overflow: TextOverflow.ellipsis),
        //                 ),
        //                 const Flexible(
        //                     child: Image(
        //                         image: AssetImage(mTopManegementImage1),
        //                         height: 110)),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(
        //                   style: ElevatedButton.styleFrom(
        //                       shape: const CircleBorder()),
        //                   onPressed: () {},
        //                   child: const Icon(Icons.play_arrow),
        //                 ),
        //                 const SizedBox(width: mDashboardCardPadding),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text("3 Sections",
        //                         style: txtTheme.headlineMedium,
        //                         overflow: TextOverflow.ellipsis),
        //                     Text("Manegement Methods",
        //                         style: txtTheme.headlineMedium,
        //                         overflow: TextOverflow.ellipsis),
        //                   ],
        //                 ),
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: mCardBgColor),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(
        //                 child: Text("Scrum Crash Course",
        //                     style: txtTheme.headlineMedium,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //               const Flexible(
        //                   child: Image(
        //                       image: AssetImage(mTopManegementImage1),
        //                       height: 110)),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     shape: const CircleBorder()),
        //                 onPressed: () {},
        //                 child: const Icon(Icons.play_arrow),
        //               ),
        //               const SizedBox(width: mDashboardCardPadding),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 Sections",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                   Text("Manegement Methods",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                 ],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: mCardBgColor),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(
        //                 child: Text("Scrum Crash Course",
        //                     style: txtTheme.headlineMedium,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //               const Flexible(
        //                   child: Image(
        //                       image: AssetImage(mTopManegementImage1),
        //                       height: 110)),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     shape: const CircleBorder()),
        //                 onPressed: () {},
        //                 child: const Icon(Icons.play_arrow),
        //               ),
        //               const SizedBox(width: mDashboardCardPadding),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 Sections",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                   Text("Manegement Methods",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                 ],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: mCardBgColor),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(
        //                 child: Text("Scrum Crash Course",
        //                     style: txtTheme.headlineMedium,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //               const Flexible(
        //                   child: Image(
        //                       image: AssetImage(mTopManegementImage1),
        //                       height: 110)),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     shape: const CircleBorder()),
        //                 onPressed: () {},
        //                 child: const Icon(Icons.play_arrow),
        //               ),
        //               const SizedBox(width: mDashboardCardPadding),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 Sections",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                   Text("Manegement Methods",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                 ],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: mCardBgColor),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(
        //                 child: Text("Scrum Crash Course",
        //                     style: txtTheme.headlineMedium,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //               const Flexible(
        //                   child: Image(
        //                       image: AssetImage(mTopManegementImage1),
        //                       height: 110)),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     shape: const CircleBorder()),
        //                 onPressed: () {},
        //                 child: const Icon(Icons.play_arrow),
        //               ),
        //               const SizedBox(width: mDashboardCardPadding),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 Sections",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                   Text("Manegement Methods",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                 ],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: mCardBgColor),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(
        //                 child: Text("Scrum Crash Course",
        //                     style: txtTheme.headlineMedium,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //               const Flexible(
        //                   child: Image(
        //                       image: AssetImage(mTopManegementImage1),
        //                       height: 110)),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     shape: const CircleBorder()),
        //                 onPressed: () {},
        //                 child: const Icon(Icons.play_arrow),
        //               ),
        //               const SizedBox(width: mDashboardCardPadding),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 Sections",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                   Text("Manegement Methods",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                 ],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: mCardBgColor),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(
        //                 child: Text("Scrum Crash Course",
        //                     style: txtTheme.headlineMedium,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //               const Flexible(
        //                   child: Image(
        //                       image: AssetImage(mTopManegementImage1),
        //                       height: 110)),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     shape: const CircleBorder()),
        //                 onPressed: () {},
        //                 child: const Icon(Icons.play_arrow),
        //               ),
        //               const SizedBox(width: mDashboardCardPadding),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 Sections",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                   Text("Manegement Methods",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                 ],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: mCardBgColor),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(
        //                 child: Text("Scrum Crash Course",
        //                     style: txtTheme.headlineMedium,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //               const Flexible(
        //                   child: Image(
        //                       image: AssetImage(mTopManegementImage1),
        //                       height: 110)),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     shape: const CircleBorder()),
        //                 onPressed: () {},
        //                 child: const Icon(Icons.play_arrow),
        //               ),
        //               const SizedBox(width: mDashboardCardPadding),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 Sections",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                   Text("Manegement Methods",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                 ],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: mCardBgColor),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(
        //                 child: Text("Scrum Crash Course",
        //                     style: txtTheme.headlineMedium,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //               const Flexible(
        //                   child: Image(
        //                       image: AssetImage(mTopManegementImage1),
        //                       height: 110)),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     shape: const CircleBorder()),
        //                 onPressed: () {},
        //                 child: const Icon(Icons.play_arrow),
        //               ),
        //               const SizedBox(width: mDashboardCardPadding),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 Sections",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                   Text("Manegement Methods",
        //                       style: txtTheme.headlineMedium,
        //                       overflow: TextOverflow.ellipsis),
        //                 ],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
