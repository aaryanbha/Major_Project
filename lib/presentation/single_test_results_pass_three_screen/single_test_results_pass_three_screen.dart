import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aaryan_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class SingleTestResultsPassThreeScreen extends StatelessWidget {
  const SingleTestResultsPassThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 33.v),
                child: Column(children: [
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
                                            SizedBox(height: 14.v),
                                            Text("K",
                                                style: theme
                                                    .textTheme.headlineSmall)
                                          ]))
                                ])),
                        SizedBox(height: 28.v),
                        SizedBox(
                            width: 146.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Potassium\n",
                                      style: theme.textTheme.headlineMedium),
                                  TextSpan(
                                      text: "Test",
                                      style: CustomTextStyles
                                          .headlineSmallInterff111827)
                                ]),
                                textAlign: TextAlign.center))
                      ])),
                  SizedBox(height: 20.v),
                  _buildFortyEight(context),
                  SizedBox(height: 30.v),
                  _buildRecommended(context),
                  SizedBox(height: 60.v),
                  _buildFrameThirtyTwo(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "Test Results", margin: EdgeInsets.only(left: 20.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.fromLTRB(21.h, 13.v, 21.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
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
                            Text("Measured".toUpperCase(),
                                style: theme.textTheme.titleMedium),
                            SizedBox(height: 19.v),
                            Row(children: [
                              Text("56.135 ",
                                  style: theme.textTheme.headlineLarge),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.h, top: 19.v, bottom: 2.v),
                                  child: Text("units",
                                      style: theme.textTheme.bodyMedium))
                            ])
                          ])),
                  Container(
                      height: 89.adaptSize,
                      width: 89.adaptSize,
                      margin: EdgeInsets.only(top: 17.v),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorTeal900,
                            height: 26.v,
                            width: 40.h,
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorTeal400,
                            height: 89.adaptSize,
                            width: 89.adaptSize,
                            alignment: Alignment.center)
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildRecommended(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(children: [
        Text("Recommended".toUpperCase(), style: theme.textTheme.titleMedium),
        SizedBox(height: 19.v),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("56-65", style: theme.textTheme.headlineLarge),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
              child: Text("units", style: theme.textTheme.bodyMedium))
        ])
      ]),
      Padding(
          padding: EdgeInsets.only(top: 19.v),
          child: Column(children: [
            Align(
                alignment: Alignment.centerRight,
                child: Text("Test Passed",
                    style: CustomTextStyles.headlineMediumTeal900)),
            SizedBox(height: 4.v),
            Text("No Improvement Needed", style: theme.textTheme.bodyLarge)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildFrameThirtyTwo(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrameThirtyTwo(context);
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  text: "Measure again".toUpperCase(),
                  margin: EdgeInsets.only(right: 7.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 10.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgQrcode,
                          height: 26.adaptSize,
                          width: 26.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillYellow)),
          Expanded(
              child: CustomElevatedButton(
                  text: "Next test".toUpperCase(),
                  margin: EdgeInsets.only(left: 7.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 10.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowleft,
                          height: 26.adaptSize,
                          width: 26.adaptSize))))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapFrameThirtyTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
