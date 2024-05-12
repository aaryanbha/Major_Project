import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aaryan_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';
class SingleTestResultsPassOneScreen extends StatelessWidget {
  const SingleTestResultsPassOneScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 41.v),
                child: Column(children: [
                  SizedBox(height: 1.v),
                  Column(children: [
                    _buildAppBar(context),
                    SizedBox(height: 23.v),
                    Container(
                        height: 268.adaptSize,
                        width: 268.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.h, vertical: 46.v),
                        decoration: AppDecoration.outlineBlueA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder134),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGroupIndigo800,
                            height: 173.v,
                            width: 184.h,
                            alignment: Alignment.center)),
                    SizedBox(height: 28.v),
                    Container(
                        width: 289.h,
                        margin: EdgeInsets.only(left: 45.h, right: 39.h),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Electric Conductivity\n",
                                  style: theme.textTheme.headlineMedium),
                              TextSpan(
                                  text: "Test",
                                  style: CustomTextStyles
                                      .headlineSmallInterff111827)
                            ]),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 22.v),
                    _buildMeasured(context),
                    SizedBox(height: 62.v),
                    _buildFrameThirtyTwo(context)
                  ])
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 30.v,
        title: AppbarTitle(
            text: "Test Results", margin: EdgeInsets.only(left: 20.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.only(left: 21.h, top: 4.v, right: 21.h))
        ]);
  }

  /// Section Widget
  Widget _buildMeasured(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Measured".toUpperCase(), style: theme.textTheme.titleMedium),
        SizedBox(height: 19.v),
        Row(children: [
          Text("56.135 ", style: theme.textTheme.headlineLarge),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
              child: Text("units", style: theme.textTheme.bodyMedium))
        ]),
        SizedBox(height: 59.v),
        Text("Recommended".toUpperCase(), style: theme.textTheme.titleMedium),
        SizedBox(height: 19.v),
        Row(children: [
          Text("56-65", style: theme.textTheme.headlineLarge),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 2.v),
              child: Text("units", style: theme.textTheme.bodyMedium))
        ])
      ]),
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            CustomImageView(
                imagePath: ImageConstant.imgCheckcircle,
                height: 110.adaptSize,
                width: 110.adaptSize),
            SizedBox(height: 30.v),
            Text("Test Passed", style: CustomTextStyles.headlineMediumTeal900),
            SizedBox(height: 2.v),
            Text("No Improvement Needed", style: theme.textTheme.bodyLarge)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildFrameThirtyTwo(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                      width: 26.adaptSize)),
              onPressed: () {
                onTapNextTest(context);
              }))
    ]);
  }

  /// Navigates to the typeOfMeasurementsEightScreen when the action is triggered.
  onTapNextTest(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.typeOfMeasurementsEightScreen);
  }
}
