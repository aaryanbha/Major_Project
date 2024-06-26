// import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
// import 'package:aaryan_s_application4/widgets/app_bar/appbar_title.dart';
// import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_image.dart';
// import 'package:aaryan_s_application4/widgets/custom_elevated_button.dart';
// import 'package:flutter/material.dart';
// import 'package:aaryan_s_application4/core/app_export.dart';
// class SingleTestResultsPassOneScreen extends StatelessWidget {
//   const SingleTestResultsPassOneScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body: Container(
//                 width: double.maxFinite,
//                 padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 41.v),
//                 child: Column(children: [
//                   SizedBox(height: 1.v),
//                   Column(children: [
//                     _buildAppBar(context),
//                     SizedBox(height: 23.v),
//                     Container(
//                         height: 268.adaptSize,
//                         width: 268.adaptSize,
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 40.h, vertical: 46.v),
//                         decoration: AppDecoration.outlineBlueA.copyWith(
//                             borderRadius: BorderRadiusStyle.circleBorder134),
//                         child: CustomImageView(
//                             imagePath: ImageConstant.imgGroupIndigo800,
//                             height: 173.v,
//                             width: 184.h,
//                             alignment: Alignment.center)),
//                     SizedBox(height: 28.v),
//                     Container(
//                         width: 289.h,
//                         margin: EdgeInsets.only(left: 45.h, right: 39.h),
//                         child: RichText(
//                             text: TextSpan(children: [
//                               TextSpan(
//                                   text: "Electric Conductivity\n",
//                                   style: theme.textTheme.headlineMedium),
//                               TextSpan(
//                                   text: "Test",
//                                   style: CustomTextStyles
//                                       .headlineSmallInterff111827)
//                             ]),
//                             textAlign: TextAlign.center)),
//                     SizedBox(height: 22.v),
//                     _buildMeasured(context),
//                     SizedBox(height: 62.v),
//                     _buildFrameThirtyTwo(context)
//                   ])
//                 ]))));
//   }
//
//   /// Section Widget
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//         height: 30.v,
//         title: AppbarTitle(
//             text: "Test Results", margin: EdgeInsets.only(left: 20.h)),
//         actions: [
//           AppbarTrailingImage(
//               imagePath: ImageConstant.imgHome,
//               margin: EdgeInsets.only(left: 21.h, top: 4.v, right: 21.h))
//         ]);
//   }
//
//   /// Section Widget
//   Widget _buildMeasured(BuildContext context) {
//     return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//         Text("Measured".toUpperCase(), style: theme.textTheme.titleMedium),
//         SizedBox(height: 19.v),
//         Row(children: [
//           Text("56.135 ", style: theme.textTheme.headlineLarge),
//           Padding(
//               padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
//               child: Text("units", style: theme.textTheme.bodyMedium))
//         ]),
//         SizedBox(height: 59.v),
//         Text("Recommended".toUpperCase(), style: theme.textTheme.titleMedium),
//         SizedBox(height: 19.v),
//         Row(children: [
//           Text("56-65", style: theme.textTheme.headlineLarge),
//           Padding(
//               padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
//               child: Text("units", style: theme.textTheme.bodyMedium))
//         ])
//       ]),
//       Padding(
//           padding: EdgeInsets.only(top: 2.v),
//           child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
//             CustomImageView(
//                 imagePath: ImageConstant.imgCheckcircle,
//                 height: 110.adaptSize,
//                 width: 110.adaptSize),
//             SizedBox(height: 30.v),
//             Text("Test Passed", style: CustomTextStyles.headlineMediumTeal900),
//             SizedBox(height: 2.v),
//             Text("No Improvement Needed", style: theme.textTheme.bodyLarge)
//           ]))
//     ]);
//   }
//
//   /// Section Widget
//   Widget _buildFrameThirtyTwo(BuildContext context) {
//     return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//       Expanded(
//           child: CustomElevatedButton(
//               text: "Measure again".toUpperCase(),
//               margin: EdgeInsets.only(right: 7.h),
//               leftIcon: Container(
//                   margin: EdgeInsets.only(right: 10.h),
//                   child: CustomImageView(
//                       imagePath: ImageConstant.imgQrcode,
//                       height: 26.adaptSize,
//                       width: 26.adaptSize)),
//               buttonStyle: CustomButtonStyles.fillYellow)),
//       Expanded(
//           child: CustomElevatedButton(
//               text: "Next test".toUpperCase(),
//               margin: EdgeInsets.only(left: 7.h),
//               leftIcon: Container(
//                   margin: EdgeInsets.only(right: 10.h),
//                   child: CustomImageView(
//                       imagePath: ImageConstant.imgArrowleft,
//                       height: 26.adaptSize,
//                       width: 26.adaptSize)),
//               onPressed: () {
//                 onTapNextTest(context);
//               }))
//     ]);
//   }
//
//   /// Navigates to the typeOfMeasurementsEightScreen when the action is triggered.
//   onTapNextTest(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.typeOfMeasurementsEightScreen);
//   }
// }

import 'package:aaryan_s_application4/presentation/type_of_measurements_eight_screen/type_of_measurements_eight_screen.dart';
import 'package:aaryan_s_application4/presentation/type_of_measurements_one_screen/type_of_measurements_one_screen.dart';
import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aaryan_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class SingleTestResultsPassOneScreen extends StatelessWidget {
  final double responseNumber;
  const SingleTestResultsPassOneScreen({Key? key, this.responseNumber = 56}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: _buildAppBar(context),
          body: SingleChildScrollView(
            child:  Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 28.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 55.h, right: 50.h),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 33.h, vertical: 67.v),
                          decoration: AppDecoration.outlinePink.copyWith(
                              borderRadius:
                              BorderRadiusStyle.circleBorder134),
                          child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath:
                                    ImageConstant.imgGroupOnprimary,
                                    height: 116.v,
                                    width: 175.h,
                                    margin:
                                    EdgeInsets.symmetric(vertical: 7.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 14.v, right: 2.h),
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("N",
                                                  style: theme.textTheme
                                                      .headlineSmall)),
                                          SizedBox(height: 14.v),
                                          Align(
                                              alignment:
                                              Alignment.centerRight,
                                              child: Text("P",
                                                  style: theme.textTheme
                                                      .headlineSmall)),
                                          SizedBox(height: 10.v),
                                          Text("K",
                                              style: theme
                                                  .textTheme.headlineSmall)
                                        ]))
                              ])),
                      SizedBox(height: 27.v),
                      SizedBox(
                          width: 119.h,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Nitrogen\n",
                                    style: theme.textTheme.headlineMedium),
                                TextSpan(
                                    text: "Test",
                                    style: CustomTextStyles
                                        .headlineSmallInterff111827)
                              ]),
                              textAlign: TextAlign.center))
                    ])),
                  SizedBox(height: 20.v),
                  if (responseNumber >= 56 && responseNumber <= 65)
                    _buildPass(context)
                  else
                    _buildFail(context),
                  SizedBox(height: 50.v),
                  _buildFrameThirtyTwo(context),
                  SizedBox(height: 2.v),
                ],
              ),
            ),
          )
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Test Results",
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgHome,
          margin: EdgeInsets.fromLTRB(21.h, 13.v, 21.h, 8.v),
        ),
      ],
    );
  }

  Widget _buildPass(BuildContext context) {
    return Column(
      children: [
        _buildSixtyFive(context),
        SizedBox(height: 31.v),
        _buildRecommended(context, "Test Passed", "No Improvement Needed", CustomTextStyles.headlineMediumTeal900),
      ],
    );
  }

  Widget _buildFail(BuildContext context) {
    return Column(
      children: [
        _buildMeasured(context),
        SizedBox(height: 24.v),
        CustomElevatedButton(
          height: 50.v,
          text: "Get solution".toUpperCase(),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgProfile,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillRed,
          buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        ),
        // SizedBox(height: 13.v),
      ],
    );
  }

  Widget _buildSixtyFive(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 28.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Measured".toUpperCase(),
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 19.v),
                  Row(
                    children: [
                      Text(
                        "$responseNumber ",
                        style: theme.textTheme.headlineLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
                        child: Text("units", style: theme.textTheme.bodyMedium),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 89.adaptSize,
              width: 89.adaptSize,
              margin: EdgeInsets.only(top: 17.v),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorTeal900,
                    height: 26.v,
                    width: 40.h,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorTeal400,
                    height: 89.adaptSize,
                    width: 89.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMeasured(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Measured".toUpperCase(), style: theme.textTheme.titleMedium),
            SizedBox(height: 19.v),
            Row(
              children: [
                Text("$responseNumber ", style: theme.textTheme.headlineLarge),
                Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
                  child: Text("units", style: theme.textTheme.bodyMedium),
                ),
              ],
            ),
            SizedBox(height: 59.v),
            Text("Recommended".toUpperCase(), style: theme.textTheme.titleMedium),
            SizedBox(height: 19.v),
            Row(
              children: [
                Text("56-65", style: theme.textTheme.headlineLarge),
                Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
                  child: Text("units", style: theme.textTheme.bodyMedium),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgXcircle,
                height: 120.adaptSize,
                width: 120.adaptSize,
              ),
              SizedBox(height: 34.v),
              Text("Test Failed", style: CustomTextStyles.headlineMediumPink900),
              SizedBox(height: 5.v),
              Text("Improvements Needed", style: CustomTextStyles.titleMediumPrimaryContainer),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRecommended(BuildContext context, String status, String details, TextStyle statusStyle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text("Recommended".toUpperCase(), style: theme.textTheme.titleMedium),
            SizedBox(height: 19.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("56-65", style: theme.textTheme.headlineLarge),
                Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
                  child: Text("units", style: theme.textTheme.bodyMedium),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 19.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(status, style: statusStyle),
              ),
              SizedBox(height: 4.v),
              Text(details, style: theme.textTheme.bodyLarge),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFrameThirtyTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "Measure again".toUpperCase(),
            margin: EdgeInsets.only(right: 7.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgQrcode,
                height: 26.adaptSize,
                width: 26.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillYellow,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
              text: "Next test".toUpperCase(),
              margin: EdgeInsets.only(left: 7.h),
              rightIcon: Container(
                margin: EdgeInsets.only(left: 10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgProfile,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillRed,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TypeOfMeasurementsOneScreen(),
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}
