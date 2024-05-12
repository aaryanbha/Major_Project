import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_button.dart';
import 'package:aaryan_s_application4/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class TypeOfMeasurementsScreen extends StatelessWidget {
  const TypeOfMeasurementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 7.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Full Report",
                              style:
                                  CustomTextStyles.headlineSmallInterGray900)),
                      SizedBox(height: 39.v),
                      _buildFrameFortyFive(context),
                      SizedBox(height: 24.v),
                      _buildFrameFortySix(context),
                      SizedBox(height: 24.v),
                      _buildFrameFortySeven(context),
                      SizedBox(height: 24.v),
                      _buildFrameFortyEight(context),
                      SizedBox(height: 5.v)
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
    return GestureDetector(
        onTap: () {
          onTapFrameFortyFive(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
            decoration: AppDecoration.fillGreenA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Step 1", style: theme.textTheme.titleLarge),
                        SizedBox(height: 9.v),
                        Text("pH Level",
                            style: CustomTextStyles.bodyLargeBluegray700)
                      ]),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowRight)))
                ])));
  }

  /// Section Widget
  Widget _buildFrameFortySix(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
        decoration: AppDecoration.fillGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Step 2", style: CustomTextStyles.titleLargeGray600),
            SizedBox(height: 9.v),
            Text("Soil Nitrogen", style: theme.textTheme.bodyLarge)
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRightGray600)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortySeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
        decoration: AppDecoration.fillGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Step 3", style: CustomTextStyles.titleLargeGray600),
            SizedBox(height: 9.v),
            Text("Electric Conductivity", style: theme.textTheme.bodyLarge)
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRightGray600)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortyEight(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.v),
        decoration: AppDecoration.fillGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("Step 4", style: CustomTextStyles.titleLargeGray600),
            SizedBox(height: 7.v),
            Text("Soil NPK", style: theme.textTheme.bodyLarge)
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRightGray600)))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the typeOfMeasurementsTwoScreen when the action is triggered.
  onTapFrameFortyFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.typeOfMeasurementsTwoScreen);
  }
}
