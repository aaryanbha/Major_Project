import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_button.dart';
import 'package:aaryan_s_application4/widgets/custom_icon_button.dart';
import 'package:aaryan_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class TypeOfMeasurementsNineScreen extends StatelessWidget {
  const TypeOfMeasurementsNineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 7.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Full Report",
                              style:
                                  CustomTextStyles.headlineSmallInterGray900))),
                  SizedBox(height: 39.v),
                  _buildFrameFortyFive(context),
                  SizedBox(height: 24.v),
                  _buildFrameFortyNine(context),
                  SizedBox(height: 24.v),
                  _buildFrameFifty(context),
                  SizedBox(height: 24.v),
                  _buildFrameFiftyOne(context),
                  SizedBox(height: 12.v),
                  SizedBox(
                      width: 208.h,
                      child: Text("Report has been Generated and Saved",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50))),
                  Spacer(),
                  CustomElevatedButton(
                      height: 57.v,
                      text: "Start Over".toUpperCase(),
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 10.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgQrcode,
                              height: 26.adaptSize,
                              width: 26.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillYellow,
                      buttonTextStyle: CustomTextStyles.titleMediumPrimary),
                  SizedBox(height: 10.v),
                  CustomElevatedButton(
                      height: 57.v,
                      text: "See report".toUpperCase(),
                      buttonTextStyle: CustomTextStyles.titleMediumPrimary),
                  SizedBox(height: 31.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 23.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        actions: [
          AppbarTrailingButton(
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameFortyFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.v),
        decoration: AppDecoration.fillGreenA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Step 1", style: theme.textTheme.titleLarge),
            SizedBox(height: 7.v),
            Text("Soil Moisture", style: CustomTextStyles.bodyLargeBluegray700)
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child: CustomIconButton(
                  height: 39.adaptSize,
                  width: 39.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowRight)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortyNine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
        decoration: AppDecoration.fillGreenA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Step 2", style: theme.textTheme.titleLarge),
            SizedBox(height: 9.v),
            Align(
                alignment: Alignment.center,
                child: Text("pH Level",
                    style: CustomTextStyles.bodyLargeBluegray700))
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: CustomIconButton(
                  height: 39.adaptSize,
                  width: 39.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowRight)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFifty(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
        decoration: AppDecoration.fillGreenA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Step 3", style: theme.textTheme.titleLarge),
            SizedBox(height: 9.v),
            Text("Electric Conductivity", style: theme.textTheme.bodyLarge)
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: CustomIconButton(
                  height: 39.adaptSize,
                  width: 39.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowRight)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFiftyOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.v),
        decoration: AppDecoration.fillGreenA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("Step 4", style: theme.textTheme.titleLarge),
            SizedBox(height: 7.v),
            Text("Soil NPK", style: theme.textTheme.bodyLarge)
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child: CustomIconButton(
                  height: 39.adaptSize,
                  width: 39.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowRight)))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
